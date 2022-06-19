
import 'dart:developer';

import 'package:delivery_boy_app/commande.dart';
import 'package:delivery_boy_app/data/user.dart';
import 'package:delivery_boy_app/data/user_request.dart';
import 'package:delivery_boy_app/pin_screen.dart';
import 'package:delivery_boy_app/service/auth/auth_service.dart';
import 'package:delivery_boy_app/service/auth/auth_service_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:delivery_boy_app/widgets/custom_text_fields.dart';
class LoginPage extends StatefulWidget {
  static const String id = 'login-screen';
  
  const LoginPage({Key? key}) : super(key: key);
  

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var selectedindex = 0;
  String code = '';
var name,password,token;
final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final AuthService authService = AuthServiceImpl();
  login() async {
    late BuildContext dialogContext;
    showDialog(
        context: context,
        builder: (BuildContext context) {
          dialogContext = context;
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
    try {
      final response = await authService.login(
        request: UserRequest(
          user: User(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
          ),
        ),
      );
      if (response.user == null) {
        return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(response.message ?? "something went wrong")));
      }
      Navigator.pop(dialogContext);
      inspect(response);
    } on DioError catch (e) {
      Navigator.pop(dialogContext);
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content:
              Text(e.response?.data["message"] ?? "something went wrong")));
    } catch (e) {
      print(e);
    }
  }
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var idController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
            backgroundColor: Colors.yellowAccent,

      
      body:
      SingleChildScrollView(
        child: Column(children: [Container(key: formKey,
            height: height * 0.15,
            width: width,
            color: Colors.yellowAccent,
            alignment: Alignment.center,
            child: SafeArea(
              child: Container(
                  height: 100,
                  width: 50,
                  child: SvgPicture.asset(
                    'assets/logo-short.svg',
                  ),
  ),
            ),
          ),
          Container(
              height: height * 0.85,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
                      
                  
            child:Column(children:[
                        SizedBox(width: 10.0,
  height: 40.0),
 Text(
          'CONNECTEZ-VOUS',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),


        Text(
          'Identifiez-vous pour assurer une livraison facile et rapide',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Color.fromARGB(255, 165, 163, 163),
          ),
        ),
SizedBox( 
  width: 340,
  height: 90,),

   Align(
        alignment: Alignment.centerLeft,
        child: Text(
          '        Numéro ID',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey[400],
          ),
        ),
      ),
 SizedBox( 
  width: 340,
  height: 90,
  child: TextField(
    controller: emailController,
    textAlign: TextAlign.center,
    
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
        hintText: '2152659',
        
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
                width: 0, 
                style: BorderStyle.none,
            ),
        ),
        
        filled: true,
        contentPadding: EdgeInsets.all(16),
        fillColor: Colors.grey[200],
    ),
    onChanged:(val){
      name=val;
    },
),
),
    Align(
        alignment: Alignment.centerLeft,
        child: Text(
          '        Mot de passe',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey[400],
          ),
        ),
      ),

SizedBox( // <-- SEE HERE
  width: 340,
  child: TextField(
   
                controller: passwordController,
    
    
    textAlign: TextAlign.center,
    
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
        hintText: '***********',
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
                width: 0, 
                style: BorderStyle.none,
            ),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(16),
        fillColor: Colors.grey[200],
    ),
    onChanged:(val){
      password=val;
    },
),
),

TextButton(
      onPressed: (){
                            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => PasswordView()),
  );
                          },
      child: Text(
        '                                        Mot de passe oublié ?',
        style: TextStyle(
          fontSize: 15,
          
          color: Color.fromARGB(255, 165, 163, 163),
        ),
      ),
      style: ButtonStyle(
        alignment: Alignment.centerRight, // <-- had to set alignment
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.all(0), // <-- had to set padding to 0
        ),
      ),
    ),
 
    Padding(
      padding: EdgeInsets.only(top: 50),
      child: Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              Center(
            child: ElevatedButton.icon(
          icon: 
            SvgPicture.asset('assets/icon-id-face.svg'),

          
          label: Text('FACE ID'),
          onPressed: () {
            print('Pressed');
          },
          style: ElevatedButton.styleFrom(
                    primary: Colors.yellowAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.all(10),
                    minimumSize: Size(15.0, 7),
                    textStyle: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
        )),
              SizedBox(width: 10.0,
  height: 50.0),
              ElevatedButton(
                child: const Text('Se connecter'),
                onPressed: () {
Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CommandePage()));
                  
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.all(10),
                    minimumSize: Size(15.0, 7),
                    textStyle: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              
            ]),
      ),
    ),




],
),
          ),
                      ],
    
         
      ),),





        
    
         
      
          

                      );
  }
}
