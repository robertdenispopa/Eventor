const express = require("express");
const { body, validationResult } = require("express-validator");
const router = express.Router();
const businessUserController = require("../controllers/business_user.controller");
const dataValidation = require('../middleware/datavalidation');

router.get("/businessUsers", businessUserController.getAllBusinessUsers);

router.post(
  "/businessUser",
  body("companyName").isLength({ min: 6, max: 25 }),
  body("companyPassword").isStrongPassword(),
  body("email").isEmail(),
  body("location").isLength({ min: 4, max: 25 }),
  body("tel").isMobilePhone(),
  dataValidation,
  businessUserController.createBusinessUser
);

module.exports = router;
