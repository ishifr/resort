const mongoose = require('mongoose');

var Schema = mongoose.Schema;

var ResortSchema = new Schema({
     name: String,
     homeImg: String,
     beachImg:String,
     ocaenImg:String,
     roomImg:String,
     distance:String,
     aboutResort:String,
     roomPrice:String,
     room:String,
});

module.exports = mongoose.model('Resort', ResortSchema);