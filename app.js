const express = require("express");
const hbs = require('handlebars/runtime')['default'];
const helpers = require('helpers-hbs');
hbs.registerHelper('each', require('handlebars-helper-each'));

const path = require("path");
  
const fs = require('fs');

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

        if (err) { console.log(err.message); return next(); }
        things = stuff;
      })

    res.render("home", { thingsData: things });
})


app.listen(port, () => {
    console.log(`Server running at ${port}`);
  });