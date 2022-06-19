import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreenMain extends StatefulWidget {
  static const String id = 'login-screen';
  const LoginScreenMain({Key? key}) : super(key: key);

  @override
  State<LoginScreenMain> createState() => _LoginScreenMainState();
}

class _LoginScreenMainState extends State<LoginScreenMain> {
  String code = '';
  
  String _message = '';
  bool _isLogin = true;
  final TextEditingController txtUserName = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print("Code is $code");
    
    return Scaffold(
      
      body: Container(
        
        
        padding: EdgeInsets.all(0),
        child: ListView(
          children: [
            
            view(),
            textLogin(),
            SizedBox(width: 10.0,
  height: 10.0),
            textLogindes(),
            textuserInput(),
            userInput(),
            SizedBox(width: 10.0,
  height: 10.0),
            passwordtextInput(),
            passwordInput(),
            SizedBox(width: 10.0,
  height: 5.0),
            forgetPassword(),
            btnMain(),
          ],
        ),
      ),
      
    );
  }
Widget view() {
    var height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    backgroundColor: Colors.deepOrange;
    return Column(
      
        children: [
          
          Container(
            
            height: height * 0.15,
            width: width,
            color: Color.fromARGB(255, 233, 196, 31),
            
            alignment: Alignment.center,
            child: SafeArea(
              child: Container(
                  height: 100,
                  width: 100,
                  
                  child: SvgPicture.asset(
                    'assets/logo-short.svg',
                  ),
                  ),
                  
            ),
            
    ),
    ]
    );
  }

  Widget textLogin() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Text(
          'CONNECTEZ-VOUS',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget textLogindes() {
    return Container(
        padding: EdgeInsets.all(10),
        child: Center(
            child: Text(
          'Identifiez-vous pour assurer une livraison facile et rapide',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: Color.fromARGB(255, 165, 163, 163),
          ),
        )));
  }

  Widget textuserInput() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Numéro ID',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 165, 163, 163),
          ),
        ),
      ),
    );
  }

  Widget userInput() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          filled: true,
          hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          hintText: "Numéro ID",
          fillColor: Color.fromARGB(255, 248, 239, 239)),
    );
  }

  Widget passwordtextInput() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Mot de passe',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 165, 163, 163),
          ),
        ),
      ),
    );
  }

  Widget passwordInput() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.white),
          hintText: "Mot de passe",
          fillColor: Color.fromARGB(255, 250, 237, 237)),
    );
  }

  Widget forgetPassword() {
    return TextButton(
      onPressed: () => Navigator.pop(context),
      child: Text(
        'Mot de passe oublié ?',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 165, 163, 163),
        ),
      ),
      style: ButtonStyle(
        alignment: Alignment.centerRight, // <-- had to set alignment
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.all(0), // <-- had to set padding to 0
        ),
      ),
    );
  }

  Widget btnMain() {
    String btnText = _isLogin ? 'Se connecter' : 'Se connecter';
    return Padding(
      padding: EdgeInsets.only(top: 128),
      child: Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              Center(
            child: ElevatedButton.icon(
          icon: Icon(
            Icons.favorite,
            color: Colors.pink,

          ),
          label: Text('FACE ID'),
          onPressed: () {
            print('Pressed');
          },
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20.0),
            ),
          ),
        )),
              SizedBox(width: 10.0,
  height: 50.0),
              ElevatedButton(
                child: const Text('Se connecter'),
                onPressed: () {},
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
              SizedBox(width: 5.0,
  height: 10.0),
            ]),
      ),
    );
  }
}
