const express = require("express");
const studentController = require("../controllers/StudentController");
const router = express.Router();

const initRoute = (app) => {
    app.get("/api/getData", studentController.getData);
    app.post("/api/postMaSV", studentController.postData);
    return app.use("/", router);
}

module.exports = initRoute;