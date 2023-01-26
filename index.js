var port = 4242;

var express = require("express");
var app = express();

app.use(express.static("static"));

var server = app.listen(port, function () {
    console.log("Express running on port " + port + "!");
});