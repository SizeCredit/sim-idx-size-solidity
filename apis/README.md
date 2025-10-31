# Sim IDX APIs

This directory contains the hosted APIs for the Sim IDX sample project.
These APIs provide endpoints to access and interact with the indexed blockchain data in the database.

## Prerequisites

- Node.js (v20 or higher)

## Getting Started

1. Install dependencies:

```bash
npm install
```

2. Set up environment variables:

Create a `.dev.vars` file in the `/apis` folder with the following:

```
DB_CONNECTION_STRING=your_database_connection_string
```

This environment variable is injected by default into `src/index.ts`.
You can find your database connection string in the CLI logs after successfully running `sim deploy`.

**Important:** After running `sim deploy`, a new database is created with a new connection string. Make sure to update your `.dev.vars` file with the new connection string from the CLI logs to ensure your local development environment connects to the correct database.

3. Start the development server:

```bash
npm run dev
```

The server will start on `http://localhost:8787` by default.

## Local Development

- The API server automatically reloads when you make changes in the `src/` directory
- Source code is located in the `src/` directory
- Main entry point is `src/index.ts`

## API Endpoints

### GET /

Returns the last 5 liquidatable debt position events ordered by timestamp (most recent first).

**Query Parameters:**
- `limit` (optional): Number of events to return (default: 5, max: 100)

**Response Format:**
```json
{
  "count": 5,
  "result": [
    {
      "chainId": 1,
      "timestamp": "1234567890",
      "market": "0x...",
      "debtPositionId": "123",
      "collateralRatio": "1500000000000000000",
      "loanStatus": 0,
      "loanStatusName": "ACTIVE"
    }
  ]
}
```

**Example Requests:**
```bash
# Get last 5 events (default)
curl http://localhost:8787/

# Get last 10 events
curl http://localhost:8787/?limit=10

# Get last 50 events
curl http://localhost:8787/?limit=50
```

### GET /liquidatable

Returns all liquidatable debt positions from the Size protocol based on the most recent event emission.

**Query Parameters:**
- `chainId` (optional): Filter by specific chain ID
  - `1` for Ethereum
  - `8453` for Base

**Response Format:**
```json
{
  "timestamp": "1234567890",
  "count": 10,
  "result": [
    {
      "chainId": 1,
      "timestamp": "1234567890",
      "market": "0x...",
      "debtPositionId": "123",
      "collateralRatio": "1500000000000000000",
      "loanStatus": 0,
      "loanStatusName": "ACTIVE"
    }
  ]
}
```

**Loan Status Values:**
- `0` - ACTIVE: Normal operation
- `1` - OVERDUE: Past due date
- `2` - REPAID: Fully repaid

**Example Requests:**
```bash
# Get all liquidatable positions
curl http://localhost:8787/liquidatable

# Get liquidatable positions on Ethereum only
curl http://localhost:8787/liquidatable?chainId=1

# Get liquidatable positions on Base only
curl http://localhost:8787/liquidatable?chainId=8453
```

**Note:** The collateralRatio is returned with 18 decimals. A value of "1500000000000000000" represents 1.5 (or 150%).
