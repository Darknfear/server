const express = require("express");
const bodyParser = require("body-parser");
const app = express();
const initRoute = require("./routers/api");

// config data from request 
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

//config router
initRoute(app);

const port = 8018;

//create server

app.listen(port, () => {
    console.log("welcome to my server");
});