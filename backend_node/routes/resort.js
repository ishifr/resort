var express = require("express");
var ResortSchema = require("../schema/resort_schema");
var router = express.Router();

/* GET users listing. */
router.get("/", async (req, res, next) => {
  var data = await ResortSchema.find({});
  res.send(data);
});

// post method for creating data
router.post("/", async (req, res, next) => {
  var data = await ResortSchema.create({
     name: req.body.name,
     homeImg: req.body.homeImg,
     beachImg:req.body.beachImg,
     ocaenImg:req.body.ocaenImg,
     roomImg:req.body.roomImg,
     distance:req.body.distance,
     aboutResort:req.body.aboutResort,
     roomPrice:req.body.roomPrice,
     room:req.body.room,
  });
  res.send(data);
});

router.patch("/", async (req, res, next) => {
  var data = await ResortSchema.findOneAndUpdate(
    { name: req.body.oldName },
    {
     name: req.body.name,
     homeImg: req.body.homeImg,
     beachImg:req.body.beachImg,
     ocaenImg:req.body.ocaenImg,
     roomImg:req.body.roomImg,
     distance:req.body.distance,
     aboutResort:req.body.aboutResort,
     roomPrice:req.body.roomPrice,
     room:req.body.room,
    },
    { new: true }
  );

  res.send(data);
});

router.delete("/", async (req, res, next) => {
  var data = await ResortSchema.findOneAndDelete({ name: req.body.oldName });

  res.send(data);
});

module.exports = router;
