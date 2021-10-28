const knex = require("../knex/knex");
const bcrypt = require("bcrypt");
getAllCustomerUsers = async () => {
  return await knex.select().table("user");
};

getUser = async (userID) => {
  return await knex("user").select().where("userID", userID);
};

createCustomerUser = async (customerUserParameters) => {
  const username = customerUserParameters.username;
  const password = await bcrypt.hash(
    customerUserParameters.password,
    (saltRounds = 10)
  );
  const email = customerUserParameters.email;
  const tel = customerUserParameters.tel;
  const isCompany = customerUserParameters.isCompany;
  return await knex("user").insert({
    username,
    password,
    email,
    tel,
    isCompany,
  });
};

loginUser = async (customerUserParameters) => {
  const username = customerUserParameters.username;
  const password = customerUserParameters.password;
  const time = new Date();
  const sessionID = "_" + Math.random().toString(36).substr(2, 9);
  const result = await knex("user").select().where("username", username);
  console.log(result);
  if (result && (await bcrypt.compare(password, result[0].password))) {
    const userID = result[0].userID;
    const isCompany = result[0].isCompany;
    await knex("session").insert({
      sessionID,
      time,
      userID,
    });
    const r = [sessionID, userID, isCompany];
    return r;
  } else {
    return false;
  }
};

module.exports = {
  getAllCustomerUsers,
  createCustomerUser,
  loginUser,
  getUser,
};
