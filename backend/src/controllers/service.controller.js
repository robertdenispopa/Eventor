const bodyParser = require("body-parser");
const { body, validationResult } = require("express-validator");
const { response, json } = require("express");
const serviceRepository = require("../repository/service.repository")

const getAllServices = async (req, res) => {
    try {
      const data = await serviceRepository.getAllServices();
      res.send(data);
    } catch (error) {
      throw error;
    }
  };

const getService = async (req, res) => {
    try {
        const data = await serviceRepository.getService(req.params.serviceID);
        res.send(data);
      } catch (error) {
        throw error;
      }
}

const getMyServices = async (req, res) => {
    try {
        const data = await serviceRepository.getMyServices(req.params.userID);
        res.send(data);
      } catch (error) {
        throw error;
      }
}

const createService = async (req, res) => {
    console.log(req);
    await serviceRepository.createService(req.body);
    res.status("201").send();
  };


  module.exports = {
      createService,
      getAllServices,
      getService,
      getMyServices
  }