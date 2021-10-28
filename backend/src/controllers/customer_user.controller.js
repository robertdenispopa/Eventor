const customerUserRepository = require("../repository/customer_user.repository");
const bodyParser = require("body-parser");
const { body, validationResult } = require("express-validator");
const { response, json } = require("express");

const getAllCustomerUsers = async (req, res) => {
  try {
    const data = await customerUserRepository.getAllCustomerUsers();
    res.send(data);
  } catch (error) {
    throw error;
  }
};

const getUser = async (req, res) => {
  try {
      console.log(req.params.userID);
      const data = await customerUserRepository.getUser(req.params.userID);
      res.send(data);
    } catch (error) {
      console.error(error);
      res.send({error:error.message});
    }
};

const createCustomerUser = async (req, res) => {
  console.log(req.body);
  await customerUserRepository.createCustomerUser(req.body);
  res.status("201").send();
};

const loginUser = async (req, res, next) => {
  console.log(req.body);
  const r = await customerUserRepository.loginUser(req.body);
  if (r) {
    res.send(r);
  } else {
    res.status("403").send();
  }
};



module.exports = {
  getAllCustomerUsers,
  createCustomerUser,
  loginUser,
  getUser
};
