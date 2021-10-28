const express = require("express");
const { body, validationResult } = require("express-validator");
const router = express.Router();
const dataValidation = require("../middleware/datavalidation");
const reservationController = require("../controllers/reservation.controller");

router.post("/reservation", reservationController.createReservation);

router.get("/customerUserReservations/:userID", reservationController.customerUserReservations);

router.get("/companyUserReservation/:userID",  reservationController.companyUserReservations);

router.get("/bookedDates", reservationController.bookedDates);

router.get("/reservations", reservationController.allReservations);

module.exports = router;