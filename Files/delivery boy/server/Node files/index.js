//this will import the express
const express= require('express');
const mongoose = require('mongoose');
let dotenv = require('dotenv');
const Apicontroller = require('./Models/ApiController/ApiController');
dotenv.config();
//this will import the express
let RestApiapp = null;

//port for out RestApiapp connection
let port = null;
let MONGO_URL = null;




//function to initialize our variables
const initVar = async () => {

    port= process.env.PORT;
    MONGO_URL = process.env.MONGO_URL;
    RestApiapp = express();
    }

    // Create MiddleWare Function 

middleware = async()=> {

//This will help us Get Json for our Api
RestApiapp.use(express.urlencoded({extended: false}));
RestApiapp.use(express.json({extended: false}));
RestApiapp.use('/',Apicontroller);
    RestApiapp.use('/api/auth/login',Apicontroller);
    RestApiapp.use('/api/auth/signup',Apicontroller);
}

    //connect MongoDB
const connectDB = async () => {
try{
//connect
mongoose.connect(MONGO_URL , {

useUnifiedTopology:false,
bufferCommands:false,
autoIndex:false,

});
console.log("MongoDB is connected");
}
catch(error){
console.log("Error connecting MongoDB");

}
}

const ListenToPort = async () => {
    RestApiapp.listen(port , async()=> {
        console.log("Rest Api port Connected "+port);
    });
}

//trigger the function
initVar().then(()=>{
    ListenToPort().then(()=>{
        middleware().then(()=>{
            connectDB();

        })


    })
        
});

