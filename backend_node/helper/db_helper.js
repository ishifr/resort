const mongoose = require('mongoose');

const mongooseCon = () => {
    var mongoDB = 'mongodb://127.0.0.1:27017/resort';
    mongoose.connect(mongoDB, {useNewUrlParser: true,useUnifiedTopology: true});

    var db = mongoose.connection;
};

module.exports = mongooseCon;