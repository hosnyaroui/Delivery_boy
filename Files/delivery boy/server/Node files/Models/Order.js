//This file will describe our Order
const mongoose = require('mongoose');

// create a model for the user
const userSchema = new mongoose.Schema({
NumOrder:{
type:Number,
required:true,
unique:true
},
Adresse:{
type:String,
required:true,
},
Heure:{
    type:Number,
    required:true,
    },
    Distance:{
        type:String,
        required:true,
        },
},
{timestamps:true}
);

const User = mongoose.model("MyOrders",userSchema);
module.exports = Order;