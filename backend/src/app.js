const express = require("express");
const PORT = process.env.PORT || 3001;
const app = express();
const fileupload = require("express-fileupload");
var cors = require('cors');
app.use(cors());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(require("./routes/business_user"));
app.use(require("./routes/customer_user"));
app.use(require("./routes/service"));
app.use(require("./routes/reservations"));
app.use(fileupload);
console.log("sadsad");
app.listen(PORT, () => {
  console.log(`Listening on port: ${PORT}`);
});

