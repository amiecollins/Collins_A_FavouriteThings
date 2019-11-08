const express = require("express");
const hbs = require('hbs');

const path = require("path");

const sql = require("./utils/sql");

const port = process.env.PORT || 2177;

const app = express();

var things;



app.use(express.static(__dirname + '/public'));

app.set("view engine", "hbs");
app.set("views", path.join(__dirname + "/views"));

app.get("/", (req, res, next) => {

  let query = "SELECT * FROM tbl_things";

  sql.query(query, (err, stuff) => {

    if (err) { console.log(err); }

    console.log(stuff)

    things = stuff;
  })

  res.render("home", { thingsData: things });
})


app.listen(port, () => {
  console.log(`Server running at ${port}`);
});