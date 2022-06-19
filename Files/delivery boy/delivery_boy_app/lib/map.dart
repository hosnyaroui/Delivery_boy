import 'package:delivery_boy_app/src/flutter_mapbox_navigation.dart';
import 'package:delivery_boy_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart' as latLng;



import 'package:latlong2/latlong.dart';


class MapScreen extends StatefulWidget {
  
  const MapScreen({ Key? key }) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
  
}

class _MapScreenState extends State<MapScreen> {
  var points = <LatLng>[
  LatLng(35.77799, 10.82665),
  LatLng(35.77799, 10.82696),
  ];
     double long = 49.5;
  double lat = -0.09;
  LatLng point = LatLng(35.77799, 10.82617);
  var location = [];
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    body :FlutterMap(
    options: MapOptions(
      center: LatLng(35.77799, 10.82617),
      zoom: 13.0,
    ),
    layers: [
      TileLayerOptions(
    urlTemplate: "https://api.mapbox.com/styles/v1/xendrus/cl1dbpw9d00h014qouw2yw3ms/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoieGVuZHJ1cyIsImEiOiJjbDFkYm1uaHcwOGxyM2tuM3luYWNzOXJ5In0.t4CcGz0ojElgZTdRXuAfhA",
        additionalOptions: {
'accesstoken':'pk.eyJ1IjoieGVuZHJ1cyIsImEiOiJjbDFkYm1uaHcwOGxyM2tuM3luYWNzOXJ5In0.t4CcGz0ojElgZTdRXuAfhA',
'id':'mapbox.mapbox-streets-v8'
        },
  ),
      MarkerLayerOptions(
        markers: [
          Marker(
            width: 80.0,
            height: 80.0,
            point: LatLng(35.77799, 10.82617),
            builder: (ctx) =>
            Container(
              child: IconButton(icon: Icon(Icons.location_on), onPressed: () {  },color: Colors.red,
              iconSize:45.0,),
              
              
              )
              ,
            ),
          
          
        ],
        
      ),
      PolylineLayerOptions(
polylines: [
  Polyline(points: points,
  strokeWidth: 5.0,
  color: blue)
]
      )
    ],),
  );
  }
}