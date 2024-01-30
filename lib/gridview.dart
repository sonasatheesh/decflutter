import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    isToolbarVisible: true,
    builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: gridview(),
    ),
  ));

}
class gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
        children: [
          Container(child: Icon(Icons.construction),color: Colors.cyan,),
          Container(child: Icon(Icons.ac_unit),color: Colors.red,),
          Container(child: Icon(Icons.access_alarm),color: Colors.red,),
          Container(child: Icon(Icons.camera_alt),color: Colors.yellow,),
          Container(child: Icon(Icons.call),color: Colors.white24,),
          Container(child: Icon(Icons.cabin_rounded),color: Colors.pinkAccent,),
          Container(child: Icon(Icons.cable_outlined),color: Colors.blue,),
          Container(child: Icon(Icons.co_present_rounded),color: Colors.redAccent,),
          Container(child: Icon(Icons.cabin_rounded),color: Colors.teal,),
          Container(child: Icon(Icons.camera),color: Colors.lightBlue,),
        ],
      ),
    );

  }

}

