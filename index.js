const express = require("express");

const app = express();

app.get("/", (request, response) => {
  response.send("Hello from a docker container");
});

app.listen(8080, () => {
  console.log("App running on port 8080");
});
