import { App, middlewares } from "@duneanalytics/sim-idx";
import recentEventsRoute from "./routes/recent-events";
import liquidatableRoute from "./routes/liquidatable";

const app = App.create();
app.use("*", middlewares.authentication);

// Mount routes
app.route("/", recentEventsRoute);
app.route("/liquidatable", liquidatableRoute);

export default app;
