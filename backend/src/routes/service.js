const express = require("express");
const { body, validationResult } = require("express-validator");
const router = express.Router();
const dataValidation = require("../middleware/datavalidation");
const serviceController = require("../controllers/service.controller");

router.get("/services", serviceController.getAllServices);

router.get("/service/:serviceID", serviceController.getService)

router.get("/myservices/:userID", serviceController.getMyServices);

router.post("/service", serviceController.createService);

module.exports = router;
