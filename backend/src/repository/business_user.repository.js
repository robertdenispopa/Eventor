const knex = require("../knex/knex");

getAllBusinessUsers = async () => {
  return await knex.select().table("business_user");
};

createBusinessUser = async (businessUserParameters) => {
  const companyName = businessUserParameters.companyName;
  const companyPassword = businessUserParameters.companyPassword;
  const email = businessUserParameters.email;
  const location = businessUserParameters.location;
  const tel = businessUserParameters.tel;

  return await knex("business_user").insert({
    companyName,
    companyPassword,
    email,
    location,
    tel,
  });
};

module.exports = {
  getAllBusinessUsers,
  createBusinessUser,
};
