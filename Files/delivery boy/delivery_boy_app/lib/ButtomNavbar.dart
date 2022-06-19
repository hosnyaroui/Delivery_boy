import 'package:delivery_boy_app/commande.dart';
import 'package:delivery_boy_app/history_screen.dart';
import 'package:delivery_boy_app/notifications.dart';
import 'package:delivery_boy_app/order_des.dart';
import 'package:delivery_boy_app/verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarPage extends StatefulWidget {
  
  const NavBarPage({ Key? key }) : super(key: key);
  

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
 void _onItemTapped(int index) {
     if(index==0) {
      Navigator.of(context).pushReplacement(
         MaterialPageRoute(builder: (context) => CommandePage()));
    }
     if(index==1) {
      Navigator.of(context).pushReplacement(
         MaterialPageRoute(builder: (context) => OrderDes()));
    }
    if(index==2) {
      Navigator.of(context).pushReplacement(
         MaterialPageRoute(builder: (context) => NotificationScreen()));
    }
    if(index==3) {
      Navigator.of(context).pushReplacement(
         MaterialPageRoute(builder: (context) => HistoryPage()));
    }
  }

  int _selectedIndex = 0;
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            
            Padding(
              padding: EdgeInsets.only(left: 300.0, top: 1.0),
              child: IconButton(
                    icon: SvgPicture.asset('assets/icon-home-off.svg'),
                onPressed: () {
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CommandePage()),
  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 400.0, bottom: 10),
              child: IconButton(
                icon:
                 SvgPicture.asset('assets/icon-profil-off.svg'),
                onPressed: () {
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => OrderDes()),
  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 300.0),
              child: IconButton(
                icon:
                 SvgPicture.asset('assets/icon-notifi-on.svg'),
                onPressed: () {
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => NotificationScreen()),
  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 300.0, top: 15.0),
              child: IconButton(
                icon:
                 SvgPicture.asset('assets/icon-historique-off.svg'),
                onPressed: () {
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HistoryPage()),
  );
                },
              ),
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        // await authService.signOut();
      }),
      //  : _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        items: [
         BottomNavigationBarItem(icon: _selectedIndex == 0
? SvgPicture.asset('assets/icon-home-off.svg')
: SvgPicture.asset('assets/icon-home-off.svg'),

label:  '.'),

BottomNavigationBarItem(icon: _selectedIndex == 1
? SvgPicture.asset('assets/icon-profil-off.svg')
: SvgPicture.asset('assets/icon-profil-off.svg'),
label:  '.'),
BottomNavigationBarItem(icon: _selectedIndex == 2
? SvgPicture.asset('assets/icon-notifi-on.svg')
: SvgPicture.asset('assets/icon-notifi-on.svg'),
label:  '.'),
BottomNavigationBarItem(icon: _selectedIndex == 3
? SvgPicture.asset('assets/icon-historique-off.svg')
: SvgPicture.asset('assets/icon-historique-on.svg'),
label:  '.'),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}