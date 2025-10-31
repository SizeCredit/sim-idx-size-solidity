import { debtPositionIsLiquidatable } from "../db/schema/Listener";
import { desc } from "drizzle-orm";
import { db, App } from "@duneanalytics/sim-idx";

const app = App.create();

/**
 * GET /
 *
 * Returns the last 5 liquidatable debt position events.
 *
 * Query Parameters:
 *   - limit (optional): Number of events to return (default: 5, max: 100)
 *
 * Response Format:
 *   {
 *     "count": number of events returned,
 *     "result": [{
 *       "chainId": number,
 *       "timestamp": bigint (as string),
 *       "market": "0x...",
 *       "debtPositionId": bigint (as string),
 *       "collateralRatio": bigint (as string),
 *       "loanStatus": number (0=ACTIVE, 1=OVERDUE, 2=REPAID),
 *       "loanStatusName": "ACTIVE" | "OVERDUE" | "REPAID"
 *     }]
 *   }
 */
app.get("/", async (c) => {
  try {
    const limitParam = c.req.query("limit");
    const limit = limitParam ? Math.min(parseInt(limitParam, 10), 100) : 5;

    const result = await db
      .client(c)
      .select()
      .from(debtPositionIsLiquidatable)
      .orderBy(desc(debtPositionIsLiquidatable.timestamp))
      .limit(limit);

    // Format the response for better readability
    const formattedEvents = result.map((event) => ({
      chainId: Number(event.chainId),
      timestamp: event.timestamp.value.toString(),
      market: event.market,
      debtPositionId: event.debtPositionId.value.toString(),
      collateralRatio: event.collateralRatio.value.toString(),
      loanStatus: Number(event.loanStatus),
      loanStatusName: ["ACTIVE", "OVERDUE", "REPAID"][Number(event.loanStatus)] || "UNKNOWN",
    }));

    return Response.json({
      count: formattedEvents.length,
      result: formattedEvents,
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
