import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:delivery_boy_app/login_screenn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  static const String id = 'splash-screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      
      splash: Column(
        children: [


          SvgPicture.asset('assets/logo.svg', fit:BoxFit.fitHeight,),
        
          const Text(
            'Tu es pret! 1,2,3...',
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(width: 20.0,
  height: 20.0),
          SvgPicture.asset('assets/illustration.svg'),
        ],
      ),
      backgroundColor: Colors.deepPurple,
      nextScreen: const LoginPage(),
      splashIconSize: 70,
      duration: 3000,
      splashTransition: SplashTransition.slideTransition,
    );
  }
}
