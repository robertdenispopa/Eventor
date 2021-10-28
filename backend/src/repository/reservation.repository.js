const knex = require("../knex/knex");

createReservation = async (ReservationParameters) => {
    const serviceID = ReservationParameters.serviceID;
    const userID = ReservationParameters.userID;
    const reservationDate = ReservationParameters.reservationDate;
    await knex("service").where("serviceid", serviceID).update({'totalReservations': knex.raw('totalReservations + 1')});
    return await knex("reservation").insert({
      serviceID,
      userID,
      reservationDate
    });
  };

getCustomerUserReservations = async (customerUserReservationParameters) => {
  const userID = customerUserReservationParameters;
  return await knex("reservation").where("reservation.userID", userID).join("service", "service.serviceID","reservation.serviceID")
  .join("user", "user.userID", "service.userID" ).select("service.serviceName", "service.serviceTel","reservation.reservationDate", "user.username", "user.email", "reservation.reservationID")
}

getCompanyUserReservations = async (getCompanyUserReservationsParameters) => {
  const userID = getCompanyUserReservationsParameters;
  return await knex("service")
  .where("service.userID", userID)
  .join("reservation", "reservation.serviceID", "service.serviceID")
  .join("user", "user.userID", "service.userID")
  .select("user.username", "user.email", "service.serviceName", "user.tel", "reservation.reservationDate", "reservation.reservationID").toSQL()
}

bookedDates = async (bookedDatesParameters) => {
    return await knex.select(['reservationID','reservationDate','serviceID']).table("reservation");
}
allReservations = async () => {
  return await knex.select('serviceID').table("reservation");
};

  module.exports = {
      createReservation,
      bookedDates,
      allReservations,
      getCustomerUserReservations,
      getCompanyUserReservations
  }