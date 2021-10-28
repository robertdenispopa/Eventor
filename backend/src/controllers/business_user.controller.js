const businessUserRepository = require("../repository/business_user.repository");
const bodyParser = require("body-parser");
const { body, validationResult } = require("express-validator");
const { response, json } = require("express");

const getAllBusinessUsers = async (req, res) => {
  try {
    const data = await businessUserRepository.getAllBusinessUsers();
    res.send(data);
  } catch (error) {
    throw error;
  }
};

const createBusinessUser = async (req, res) => {
  console.log(req.body);
  await businessUserRepository.createBusinessUser(req.body);
  res.status("201").send();
};

module.exports = {
  getAllBusinessUsers,
  createBusinessUser,
};
