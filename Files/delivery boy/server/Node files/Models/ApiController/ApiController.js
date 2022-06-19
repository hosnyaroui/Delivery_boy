const express = require('express');
//We have imported the user schema here
const User = require('../User');
const bcrypt = require('bcrypt');


const routes = express.Router();

routes.get('/', (req,res)=>{
res.send("This is my First RestApi Route");
});


//login user
routes.post('/api/auth/login' , async (req,res)=>{

try{
    if (req.body.uid!=null){


        //We have to check if the User exist
        const user = await User.findOne({uid:req.body.uid})
        !user && res.status(404).json({
    message:"Utilisateur n'est pas disponible ",
    
        });
    const validPassword = await bcrypt.compare(req.body.Password, user.Password);
    !validPassword && res.status(404).json({
message:"mot de passe invalide",


    });


        if (user!=null){
    res.json({
        message:"success",
        body:user
    });
    
        }
    res.send("This is a login RestApi routes");
       }
       else{
   res.status(400).json({
   message:"Email is required"
   
   })
       }

}catch(erreur){
console.log("An error occured "+erreur.message);

}

   
 });
   

//sign up user
routes.post('/api/auth/signup', async (req,res)=>{

try{

    if(req.body.Password!=null){

//generate Salt
const salt = await bcrypt.genSalt(10);
const hashPassword= await bcrypt.hash(req.body.Password,salt);


 if (req.body.uid!=null){
            const user = await new User({
                uid: req.body.uid,
                Password:hashPassword,
            });
           await  user.save();
           //Return Json to the User
        res.json({
            message:"enregistrer avec succés",
            token:hashPassword});

        }else{
res.status(400).json({
    message:" numéro d'utilisateur est nécessaire",
})

        }
    
}
else{
    res.status(400).json({
        message:"mot de passe est nécessaire",
    })
}
}
catch(error){
console.log("erreur est servenu",error.message)

}

    

});

//Order descriptions
routes.post('/api/auth/signup', async (req,res)=>{

    try{
    
        if(req.body.NumOrder!=null){
     if (req.body.uid!=null){
                const order = await new Order({
                    uid: req.body.uid,
                    Password: req.body.Password,
                });
               await  user.save();
               //Return Json to the User
            res.json(user);
    
            }else{
    res.status(400).json({
        message:" numéro d'utilisateur est nécessaire",
    })
    
            }
        
    }
    else{
        res.status(400).json({
            message:"mot de passe est nécessaire",
        })
    }
    }
    catch(error){
    console.log("erreur est servenu",error.message)
    
    }
    
        
    
    });

//Retrieve all files
routes.get('/api/files',(req,res)=>{
    res.send("RestApi Retrieve All Files");
    
    });
//Retrieve specific File
    routes.get('/api/files/:filename',(req,res)=>{
        res.send("RestApi Retrieve Specific File");
        
        });

module.exports = routes;