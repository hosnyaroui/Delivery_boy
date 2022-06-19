import 'package:delivery_boy_app/bottom_navbar.dart';
import 'package:delivery_boy_app/history_screen.dart';
import 'package:delivery_boy_app/json/day_month.dart';
import 'package:delivery_boy_app/theme/colors.dart';
import 'package:delivery_boy_app/widgets/chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fl_chart/fl_chart.dart';
class StatisticScreen extends StatefulWidget {
  static const String id = 'statistics-screen';
  const StatisticScreen({Key? key}) : super(key: key);

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  var selectedindex = 0;
  int activeDay = 3;

  bool showAvg = false;
  String code = '';

  @override
  Widget build(BuildContext context) {
    
    TextStyle textStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: Colors.black.withBlue(40),
    );
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
        var size = MediaQuery.of(context).size;

   
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.yellowAccent,
      body: SingleChildScrollView(
        child: Column(
              mainAxisSize: MainAxisSize.min,


        children: [
          Container(
        
            height: height * 0.15,
            width: width,
            color: Colors.yellowAccent,
            alignment: Alignment.center,
            child: SafeArea(
              child: Container(
                  height: 200,
                  width: 300,
                  child: Text("LE SUPER HERO MED",textAlign: TextAlign.left,style: TextStyle(color:Colors.white,
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

                      
                      child:Column(children:[
                        
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
                                fontWeight: FontWeight.bold, fontSize: 13,color: Colors.grey),
                          ),
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(150, 30),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              primary: Colors.white),
                        ),
                        SizedBox(width: 10.0,
  height: 50.0),
    ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Statistiques',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(150, 30),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              primary: Colors.deepPurple),
                        ),
                        
    
  ],
),
Row(
  children: [
Container(
  width:(size.width-40)/7,
child: Column(children:[



]),
),
                        
    
  ],
),

Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(months.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              activeDay = index;
                            });
                          },
                          child: Container(
                            width: (MediaQuery.of(context).size.width - 40) / 6,
                            child: Column(
                              children: [
                                Text(
                                  months[index]['label'],
                                  style: TextStyle(fontSize: 10),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: activeDay == index
                                          ? primary
                                          : black.withOpacity(0.02),
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: activeDay == index
                                              ? primary
                                              : black.withOpacity(0.1))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 1, top: 7, bottom: 7),
                                    child: Text(
                                      months[index]['day'],
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: activeDay == index
                                              ? white
                                              : black),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }
                      ),

                      )

   
  ],
),
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: grey.withOpacity(0.01),
                      spreadRadius: 10,
                      blurRadius: 3,
                      // changes position of shadow
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rendement",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Color(0xff67727d)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: (size.width - 20),
                        height: 150,
                        child: LineChart(
                          mainData(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
                      ],
    
         
      ),
      ),
      
bottomNavigationBar: const MybottomNavBar(),

                      );
  }
}
