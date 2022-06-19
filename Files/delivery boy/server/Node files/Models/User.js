//This file will describe our User
const mongoose = require('mongoose');

// create a model for the user
const userSchema = new mongoose.Schema({
uid:{
type:Number,
required:true,
unique:true
},
Password:{
type:String,
required:true,
},
},
{timestamps:true}
);

const User = mongoose.model("MyUsers",userSchema);
module.exports = User;