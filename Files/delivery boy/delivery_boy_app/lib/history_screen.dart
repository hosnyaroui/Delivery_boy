import 'package:delivery_boy_app/ButtomNavbar.dart';
import 'package:delivery_boy_app/bottom_navbar.dart';
import 'package:delivery_boy_app/statistics.dart';
import 'package:delivery_boy_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HistoryPage extends StatefulWidget {
  static const String id = 'history-screen';
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  var selectedindex = 0;
  String code = '';

  @override
  Widget build(BuildContext context) {
    
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    
    
    return Scaffold(
      resizeToAvoidBottomInset: true,
            backgroundColor: Colors.yellowAccent,

      
      body: SingleChildScrollView(
    child:Column(
        mainAxisSize: MainAxisSize.min,

        children: [Container(
            height: height * 0.15,
            width: width,
            color: Colors.yellowAccent,
            alignment: Alignment.center,
            child: SafeArea(
              child: Container(
                  height: 200,
                  width: 300,
                  child: Text("BONJOUR MED",textAlign: TextAlign.left,style: TextStyle(color:Colors.white,
fontWeight: FontWeight. bold,fontSize: 16),),

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
                      
                      child:Column(
                        
                        children:[
                  
 
    Row(
  children: [
SizedBox(width: 60.0,
  height: 100.0),
    ElevatedButton(
                          onPressed: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HistoryPage()),
  );},
                          child: const Text(
                            'Historiques',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(150, 30),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              primary: Colors.deepPurple),
                        ),
                        SizedBox(width: 10.0,
  height: 50.0),
    ElevatedButton(
                          onPressed: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => StatisticScreen()),
  );},
                          child: const Text(
                            'Statistiques',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13,color: Colors.grey),
                          ),
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(150, 30),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              primary: Colors.white),
                        ),
                        
    
  ],
),

Container(
  height: 200.0,
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
                  leading:  SvgPicture.asset('assets/tchek.svg'),
                    title: Text("Completed",style: TextStyle(fontSize: 14,
    fontWeight: FontWeight.bold),),
                     subtitle: Text("16/02/2022"),
                     trailing:Text("Numéro ID    3648456"),
                  ),
                  
                  ),
                  
                
            
              
            ],
          ),),
          
  ],
  
)

  


),
Container(
  height: 150.0,
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
                  leading:  SvgPicture.asset('assets/icon-annuler.svg'),
                    title: Text("Annuler",style: TextStyle(fontSize: 14,
    fontWeight: FontWeight.bold),),
                     subtitle: Text("16/02/2022"),
                     trailing:Text("Numéro ID    3648589"),
                  ),
                  
                  ),
                  
                
            
              
            ],
          ),),
          
  ],
  
)

  


),

],
),
          ),
                      ],
    
         
      ),),
          
bottomNavigationBar: const MybottomNavBar(),
                      );
  }
}
