import 'package:delivery_boy_app/ButtomNavbar.dart';
import 'package:delivery_boy_app/bottom_navbar.dart';
import 'package:delivery_boy_app/commande.dart';
import 'package:delivery_boy_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class OrderDes extends StatefulWidget {
    static const String id = 'orderdes-screen';

  const OrderDes({ Key? key }) : super(key: key);

  @override
  State<OrderDes> createState() => _OrderDesState();
}

class _OrderDesState extends State<OrderDes> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,

appBar : AppBar(
  
  title: const Text('           NOM DE COMMANDE', textAlign: TextAlign.left,style: TextStyle(color: Colors.grey,
fontWeight: FontWeight. bold,fontSize: 16),),
  backgroundColor: Colors.white,
  automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.grey),
          onPressed: (){Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CommandePage()),
  );}
        ),
elevation: 0,
    ),
    body:SingleChildScrollView(
    child:  Column(children: <Widget>[
    
    Row(
  children: const <Widget>[

    
  
    
    
    
    
  ],
),
Container(
 
  
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
    
    border: Border.all(
      color: Colors.white,
      
      width: 8,
    ),
    
    
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
                    title: Text("N° commande",style: TextStyle(fontSize: 14,
    fontWeight: FontWeight.bold),),
                     
                     trailing:Text("0558425"),
                  ),
                  
                  ),
                
            
              
            ],
          ))
  ],
  
)

  


),
Row(
  children: const <Widget>[

    
  
    
    
    
    
  ],
),
Container(
 
  
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
    
    border: Border.all(
      color: Colors.white,
      
      width: 8,
    ),
    
    
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
                  leading:  SvgPicture.asset('assets/icon-adresse.svg'),
                    subtitle: Text("68 Rue farhat hached Sahloul - 4000 immeuble El yoser 2 ème étage",style: TextStyle(fontSize: 14,
    fontWeight: FontWeight.bold),),
                     
                     
                  ),
                  
                  ),
                
            
              
            ],
          ))
  ],
  
)

  


),
Row(
  children: const <Widget>[

    
  
    
    
    
    
  ],
),
Container(
 
  
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
    
    border: Border.all(
      color: Colors.white,
      
      width: 8,
    ),
    
    
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
                  leading:  SvgPicture.asset('assets/icon-telephone.svg'),
                    title: Text("+216 55 858 877 - 73 584 859",style: TextStyle(fontSize: 14,
    ),
                     
                     
                  ),
                  
                  ),
                
              ),
              
            ],
          ))
  ],
  
)

  


),
Row(
  children: const <Widget>[

    
  
    
    
    
    
  ],
),
Container(
 
  
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
    
    border: Border.all(
      color: Colors.white,
      
      width: 8,
    ),
    
    
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
                  
                    title: Text("Description",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold
    ),
                     
                     
                  ),
                  subtitle: Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam consettetur sadipsci', textAlign: TextAlign.left),
                  
                  ),
                
              ),
              
            ],
          ))
  ],
  
)

  


),


  
     Row(
  children: const <Widget>[
    
  ],
),
Container(
  
  
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
    
    border: Border.all(
      color: Colors.white,
      
      width: 8,
    ),
    
    
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
                  leading:  SvgPicture.asset('assets/icon-prix.svg'),
                    title: Text("0.12TND",style: TextStyle(fontSize: 14,
    fontWeight: FontWeight.bold),),
                     subtitle: SvgPicture.asset('assets/icon-time.svg'),
                     trailing:SvgPicture.asset('assets/icon-km.svg'),
                  ),
                  
                  ),
                
            
              
            ],
          ))
  ],
  
)

  


),
  
    
    
    Row(
  children: const <Widget>[

    
    SizedBox(width: 50.0,
  ),
    Expanded(
      child: Text('Commentaire:', textAlign: TextAlign.left,style: TextStyle(color: Colors.black,
fontWeight: FontWeight. bold,fontSize: 16),),
    ),
    
    
  ],
),
Row(
  children: const <Widget>[

    
    SizedBox(width: 50.0,
  ),
    Expanded(
      child: Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam consettetur sadipsci', textAlign: TextAlign.left),
    ),
],
    ),
    
Padding(
                      padding: const EdgeInsets.all(50),
                      child: Column(children: [
                        ElevatedButton(
                          onPressed: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CommandePage()),
  );},
                          child: const Text(
                            'Terminer',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(450, 25),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              primary: Colors.deepPurple),
                        )
                      ]),),

    ],
    
    
    ),),
    bottomNavigationBar: const MybottomNavBar(),
    );
  }
}