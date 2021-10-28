const knex = require("../knex/knex");

getAllServices = async () => {
  return await knex.select().table("service");
};

getService = async (serviceParameters) => {
  const serviceID = serviceParameters;
  return await knex("service").select().where("serviceID", serviceID)
}

getMyServices = async (serviceParameters) => {
  const userID = serviceParameters;
  return await knex("service").select().where("userID", userID)
}

createService = async (ServiceParameters) => {
    const serviceName = ServiceParameters.serviceName;
    const serviceDescription =ServiceParameters.serviceDescription;
    const userID = ServiceParameters.userID;
    const serviceTel = ServiceParameters.serviceTel;
    const serviceImage= ServiceParameters.serviceImage;
    return await knex("service").insert({
      serviceName,
      serviceDescription,
      userID,
      serviceTel,
      serviceImage
    });
  };


 module.exports= {
     createService,
     getAllServices,
     getService,
     getMyServices
 }