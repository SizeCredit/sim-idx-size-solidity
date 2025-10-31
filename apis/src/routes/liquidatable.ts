import { debtPositionIsLiquidatable } from "../db/schema/Listener";
import { desc, eq } from "drizzle-orm";
import { db, App } from "@duneanalytics/sim-idx";

const app = App.create();

/**
 * GET /liquidatable
 *
 * Returns all liquidatable debt positions from the most recent event emission.
 *
 * Query Parameters:
 *   - chainId (optional): Filter by specific chain ID (1 for Ethereum, 8453 for Base)
 *
 * Response Format:
 *   {
 *     "timestamp": "latest emission timestamp",
 *     "count": number of liquidatable positions,
 *     "result": [{
 *       "chainId": number,
 *       "timestamp": bigint (as string),
 *       "market": "0x...",
 *       "debtPositionId": bigint (as string),
 *       "collateralRatio": bigint (as string),
 *       "loanStatus": number (0=ACTIVE, 1=OVERDUE, 2=REPAID)
 *     }]
 *   }
 */
app.get("/", async (c) => {
  try {
    const chainIdParam = c.req.query("chainId");

    // First, get the most recent timestamp across all events
    const latestEventQuery = db
      .client(c)
      .select({
        timestamp: debtPositionIsLiquidatable.timestamp,
      })
      .from(debtPositionIsLiquidatable)
      .orderBy(desc(debtPositionIsLiquidatable.timestamp))
      .limit(1);

    const latestEvent = await latestEventQuery;

    if (!latestEvent || latestEvent.length === 0) {
      return Response.json({
        timestamp: null,
        count: 0,
        result: [],
        message: "No liquidatable positions found",
      });
    }

    const latestTimestamp = latestEvent[0].timestamp;

    // Get all positions from the latest timestamp
    let query = db
      .client(c)
      .select()
      .from(debtPositionIsLiquidatable)
      .where(eq(debtPositionIsLiquidatable.timestamp, latestTimestamp));

    // Apply chainId filter if provided
    if (chainIdParam) {
      const chainId = BigInt(chainIdParam);
      query = query.where(eq(debtPositionIsLiquidatable.chainId, chainId));
    }

    const positions = await query.orderBy(
      debtPositionIsLiquidatable.chainId,
      debtPositionIsLiquidatable.market,
      debtPositionIsLiquidatable.debtPositionId
    );

    // Format the response for better readability
    const formattedPositions = positions.map((pos) => ({
      chainId: Number(pos.chainId),
      timestamp: pos.timestamp.value.toString(),
      market: pos.market,
      debtPositionId: pos.debtPositionId.value.toString(),
      collateralRatio: pos.collateralRatio.value.toString(),
      loanStatus: Number(pos.loanStatus),
      loanStatusName: ["ACTIVE", "OVERDUE", "REPAID"][Number(pos.loanStatus)] || "UNKNOWN",
    }));

    return Response.json({
      timestamp: latestTimestamp.value.toString(),
      count: formattedPositions.length,
      result: formattedPositions,
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json(
      {
        error: (e as Error).message,
        stack: process.env.NODE_ENV === 'development' ? (e as Error).stack : undefined
      },
      { status: 500 }
    );
  }
});

export default app;
