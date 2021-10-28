const bodyParser = require("body-parser");
const { body, validationResult } = require("express-validator");
const { response, json } = require("express");
const reservationRepository = require("../repository/reservation.repository")

const createReservation = async (req, res) => {
    console.log(req);
    await reservationRepository.createReservation(req.body);
    res.status("201").send();
  };

const bookedDates = async(req, res) => {
    try {
        const data = await reservationRepository.bookedDates();
        res.send(data);
      } catch (error) {
        throw error;
      }
    };

const customerUserReservations = async(req, res) => {
  try {
    const data = await reservationRepository.getCustomerUserReservations(req.params.userID);
    res.send(data);
  } catch (error) {
    throw error;
  }
}

const companyUserReservations = async(req,res) =>{
  try {
    const data = await reservationRepository.getCompanyUserReservations(req.params.userID);
    res.send(data);
  } catch (error) {
    throw error;
  }
}

 const allReservations = async (req, res) => {
        try {
          const data = await reservationRepository.allReservations();
          res.send(data);
        } catch (error) {
          throw error;
        }
      };

  module.exports = {
      createReservation,
      bookedDates,
      allReservations,
      customerUserReservations,
      companyUserReservations
  }