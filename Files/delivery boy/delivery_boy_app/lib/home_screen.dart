import 'package:delivery_boy_app/commande.dart';
import 'package:delivery_boy_app/history_screen.dart';
import 'package:delivery_boy_app/login_screen.dart';
import 'package:delivery_boy_app/notifications.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  
  List pages = [
    HomeScreen(),
    NotificationScreen(),
    HistoryPage(),
  ];
  int currentindex = 0;
  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          margin: EdgeInsets.all(65),
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.red),
            onPressed: () {
              
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (c) => LoginScreen()));
            },
            child: Text(
              'déconnecter',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: 0,
          selectedItemColor: Colors.yellowAccent,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Commande', icon: Icon(Icons.apps)),
            BottomNavigationBarItem(
                label: 'Notifications',
                icon: Icon(Icons.notifications_active_outlined)),
            BottomNavigationBarItem(
                label: 'History', icon: Icon(Icons.history)),
          ]),
    );
  }
}
