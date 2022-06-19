import 'package:delivery_boy_app/ButtomNavbar.dart';
import 'package:delivery_boy_app/bottom_navbar.dart';
import 'package:delivery_boy_app/screens/home.dart';
import 'package:getwidget/getwidget.dart';

import 'package:delivery_boy_app/theme/colors.dart';
import 'package:delivery_boy_app/ui/splash.dart';
import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommandePage extends StatefulWidget {
  static const String id = 'commande-screen';
  @override
  _CommandePageState createState() => _CommandePageState();
}

class _CommandePageState extends State<CommandePage> {
  var selectedindex = 0;
  bool _customTileExpanded = false;
  List<String> foodList = [];
  List<String>? foodListSearch;
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController? _textEditingController = TextEditingController();
  int currentindex = 0;
  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }
  @override
  void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
        SizedBox(width: 100.0,
  height: 100.0),
    Container(
width: double.infinity,
height: 48,
decoration: BoxDecoration(color: white,
borderRadius: BorderRadius.circular(15),
boxShadow: [
  BoxShadow(
color: grey.withOpacity(0.2),
spreadRadius: 2,
blurRadius: 15,
offset: Offset(0,1)

  )
  
]
),
child: Row(children: [
SizedBox(width: 5,),
IconButton(onPressed: (){},
 icon: Icon (FeatherIcons.search,
 color: black,)
 ),
 SizedBox(width: 5,),
 Flexible(
   child: TextField(
 cursorColor: black,
 decoration: InputDecoration(border: InputBorder.none,
 hintText: "N° Commande"),
 
   ),
 ),
 IconButton(
              icon: SvgPicture.asset('assets/icon-liste-on.svg'),
              onPressed: () {
                setState(() {
                 //Navigator.push(
   // context,
    //MaterialPageRoute(builder: (context) => Splash()));
                });
              },),
              IconButton(
              icon: SvgPicture.asset('assets/icon-map-off.svg'),
              onPressed: () {
                setState(() {
                 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Splash()));
                });
              },),

],

),

    ),
    Row(
  children: const <Widget>[

    SizedBox(width: 30.0,
  height: 50.0),
  
    Expanded(
      
      child: Text('BONJOUR MED', textAlign: TextAlign.start, style: TextStyle(
fontWeight: FontWeight. bold,fontSize: 26),),
    ),
    
    
    
    
    
  ],
),
Row(
  children: const <Widget>[
SizedBox(width: 00.0,
  height: 1.0),
    
  
    Expanded(
      child: Text('2 nouveaux commandes sont disponibles', textAlign: TextAlign.center,style: TextStyle(fontFamily: 'poppins'),),
    ),
    SizedBox(width: 70.0,
  height: 10.0),
  
    
    
    
    
  ],
),
Row(
  children: [
    
SizedBox(width: 10.0,
  height: 50.0),
    
  
    Expanded(
      child: Text('Tous les commandes', textAlign: TextAlign.center,style: TextStyle(
fontWeight: FontWeight. bold),
      ),
      
    ),
    SvgPicture.asset(
          'assets/icon-filtre.svg',
          alignment: Alignment.topRight,
          
        ),
    SizedBox(width: 200.0,
  height: 50.0),
  
  
    
    
    
    
  ],
),
Row(
  children: [
    

    
    
  
    
  
  
    
    
    
    
  ],
),
SizedBox(width: 200.0,
  height: 50.0),
    ExpansionTile( title: Text("N° DE COMMANDE       0584651",style: TextStyle(
fontWeight: FontWeight. bold),),

      leading: SvgPicture.asset('assets/tchek.svg'),
      
    
    children: [

      ListTile(title: Text("68 rue farhat hached sahloul -4000"),
      leading: SvgPicture.asset('assets/icon-adresse.svg'),
      
      ),
    ]
    ),
    SizedBox(width: 200.0,
  height: 50.0),
    ExpansionTile( title: Text("N° DE COMMANDE       0584652",style: TextStyle(
fontWeight: FontWeight. bold),),

      leading: SvgPicture.asset('assets/en-cours.svg'),
      
    
    children: [

      ListTile(title: Text("68 rue farhat hached sahloul -4000"),
      leading: SvgPicture.asset('assets/icon-adresse.svg'),
      
      ),
    ]
    ),
    SizedBox(width: 200.0,
  height: 50.0),
    ExpansionTile( title: Text("N° DE COMMANDE       0584653",style: TextStyle(
fontWeight: FontWeight. bold),),

      leading: SvgPicture.asset('assets/en-cours.svg'),
      
    
    children: [

      ListTile(title: Text("68 rue farhat hached sahloul -4000"),
      leading: SvgPicture.asset('assets/icon-adresse.svg'),
      
      ),
    ]
    ),
    
    ],
    
    
    ),),
    bottomNavigationBar: const MybottomNavBar(),
      
    );
  }
}
