/*  */

const express = require("express");
const app = express();
const setupMiddlewares = require("./middlewares/indexMiddlewares");
const setupRoutes = require("./routes/indexRotes");

setupMiddlewares(app);
setupRoutes(app);

module.exports = app;
