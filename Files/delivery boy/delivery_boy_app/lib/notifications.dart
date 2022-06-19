import 'package:delivery_boy_app/ButtomNavbar.dart';
import 'package:delivery_boy_app/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationScreen extends StatefulWidget {
    static const String id = 'notification-screen';

  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  resizeToAvoidBottomInset: true,

appBar : AppBar(
  title: const Text('         NOTIFICATIONS',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
  ),
  backgroundColor: Colors.white,
  automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.grey,),
          onPressed: (){Navigator.pop(context,false);}
        ),
elevation: 0,
    ),
    body: SingleChildScrollView(
    child: Column(children: <Widget>[
    
    Row(
  children: const <Widget>[

    SizedBox(width: 100.0,
  height: 100.0),
  
    
    
    
    
  ],
),
Container(
  height: 100.0,
  width: 350.0,
  
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
    
    border: Border.all(
      color: Colors.white,
      
      width: 8,
    ),
    borderRadius: BorderRadius.circular(30),
    
  ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    
Expanded(
              child:  ListView(
            shrinkWrap: true,
            
            children: <Widget>[
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
                child:  ListTile(
tileColor: Colors.white,
                  leading:  SvgPicture.asset('assets/icon-notifi.svg'),
                    title: Text("Livraison dans une heure",style: TextStyle(fontSize: 14,
    fontWeight: FontWeight.bold),),
                     subtitle: Text("nous vous informe que vous avez une livraison dans"),
                     trailing:SvgPicture.asset('assets/icon-time.svg'),
                  ),
                  
                  ),
                
            
              
            ],
          ))
  ],
  
)

  


),
SizedBox(width: 200.0,
  height: 50.0),
Container(
  height: 100.0,
  width: 350.0,
  
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
    
    border: Border.all(
      color: Colors.white,
      
      width: 8,
    ),
    borderRadius: BorderRadius.circular(30),
    
  ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    
Expanded(
              child:  ListView(
            shrinkWrap: true,
            
            children: <Widget>[
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
                child:  ListTile(
tileColor: Colors.white,
                  leading:  SvgPicture.asset('assets/icon-notifi-attente.svg'),
                    title: Text("Une commande en attente",style: TextStyle(fontSize: 14,
    fontWeight: FontWeight.bold),),
                     subtitle: Text("nous vous informe que vous avez une livraison dans"),
                     trailing:SvgPicture.asset('assets/icon-time.svg'),
                  ),
                  
                  ),
                
            
              
            ],
          ))
  ],
  
)

  


),
SizedBox(width: 200.0,
  height: 50.0),
Container(
  height: 100.0,
  width: 350.0,
  
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
    
    border: Border.all(
      color: Colors.white,
      
      width: 8,
    ),
    borderRadius: BorderRadius.circular(30),
    
  ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    
Expanded(
              child:  ListView(
            shrinkWrap: true,
            
            children: <Widget>[
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
                child:  ListTile(
tileColor: Colors.white,
                  leading:  SvgPicture.asset('assets/icon-notifi.svg'),
                    title: Text("Livraison dans une heure",style: TextStyle(fontSize: 14,
    fontWeight: FontWeight.bold),),
                     subtitle: Text("nous vous informe que vous avez une livraison dans"),
                     trailing:SvgPicture.asset('assets/icon-time.svg'),
                  ),
                  
                  ),
                
            
              
            ],
          ))
  ],
  
)

  


),
],
    
    
    
    ),
    ),
    bottomNavigationBar: const MybottomNavBar(),
    );
    
  }
}
