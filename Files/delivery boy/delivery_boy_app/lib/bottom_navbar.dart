
import 'package:delivery_boy_app/commande.dart';
import 'package:delivery_boy_app/history_screen.dart';
import 'package:delivery_boy_app/notifications.dart';
import 'package:delivery_boy_app/order_des.dart';
import 'package:delivery_boy_app/screens/turn_by_turn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MybottomNavBar extends StatefulWidget {
  const MybottomNavBar({ Key? key }) : super(key: key);

  @override
  State<MybottomNavBar> createState() => _MybottomNavBarState();
}

class _MybottomNavBarState extends State<MybottomNavBar> {
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

int _selectedIndex= 0;
List pages =[
      CommandePage(),
      OrderDes(),
      NotificationScreen(),
      HistoryPage()
  ];
  int currentIndex=0;



  @override
  Widget build(BuildContext context) {
    
    return BottomNavigationBar(
      
      
      
      
      items: [
        
BottomNavigationBarItem(icon: _selectedIndex == 0
? SvgPicture.asset('assets/icon-home-off.svg')
: SvgPicture.asset('assets/icon-home-on.svg'),

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
      
       type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.yellowAccent,
      onTap: _onItemTapped,
     
     );
  }
}