const express = require("express");
const { body, validationResult } = require("express-validator");
const router = express.Router();
const customerUserController = require("../controllers/customer_user.controller");
const dataValidation = require("../middleware/datavalidation");

router.get("/users", customerUserController.getAllCustomerUsers);


router.get("/user/:userID", customerUserController.getUser);

router.post(
  "/user",
  body("username").isLength({ min: 6, max: 25 }),
  body("password").isStrongPassword(),
  body("email").isEmail(),
  body("tel").isMobilePhone(),
  dataValidation,
  customerUserController.createCustomerUser
);

router.post("/login", customerUserController.loginUser);


module.exports = router;
