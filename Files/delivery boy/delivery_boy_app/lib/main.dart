
import 'package:delivery_boy_app/api_call.dart';

import 'package:delivery_boy_app/screens/prepare_ride.dart';
import 'package:delivery_boy_app/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_mapbox_navigation/library.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:delivery_boy_app/OTPController.dart';
import 'package:delivery_boy_app/chart.dart';
import 'package:delivery_boy_app/widgets/charts.dart';
import 'package:delivery_boy_app/commande.dart';
import 'package:delivery_boy_app/history_screen.dart';
import 'package:delivery_boy_app/home_screen.dart';
import 'package:delivery_boy_app/login_screen.dart';
import 'package:delivery_boy_app/login_screenn.dart';
import 'package:delivery_boy_app/map.dart';
import 'package:delivery_boy_app/notifications.dart';
import 'package:delivery_boy_app/order_des.dart';
import 'package:delivery_boy_app/pin_screen.dart';
import 'package:delivery_boy_app/screens/home.dart';
import 'package:delivery_boy_app/screens/turn_by_turn.dart';
import 'package:delivery_boy_app/src/embedded/view.dart';
import 'package:delivery_boy_app/statistics.dart';
import 'package:delivery_boy_app/ui/splash.dart';
import 'package:delivery_boy_app/verification_screen.dart';

import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'ui/splash.dart';

late SharedPreferences sharedPreferences;

Future<void> backgroundHandler(RemoteMessage message) async {
  	print(message.data.toString());
 	print(message.notification!.title);
	}
void main() async {
 
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  await dotenv.load(fileName: "assets/config/.env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
 runApp(  MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    OneSignal.shared.setLogLevel(OSLogLevel.debug, OSLogLevel.none);

    OneSignal.shared.setAppId("5a42ceb5-2293-449f-b640-4b14ab95b79c");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery boy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      
initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        LoginPage.id: (context) => LoginPage(),
        PasswordView.id: (context) => PasswordView(),
        PasswordVerification.id: (context) => PasswordVerification(),
        
        CommandePage.id: (context) => CommandePage(),
        HistoryPage.id: (context) => HistoryPage(),
        
        StatisticScreen.id: ((context) => StatisticScreen()),
      },
    );
  }
}


class User {
  final String uid,password;
  User(this.uid,this.password);
}
