import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    isToolbarVisible: true,
    builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: gridviewexx(),
    ),
  ));

}
class gridviewexx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
        children: [
          Container(child: Icon(Icons.home),color: Colors.yellowAccent,),
          Container(child: Icon(Icons.email),color: Colors.grey,),
          Container(child: Icon(Icons.alarm),color: Colors.pinkAccent,),
          Container(child: Icon(Icons.wallet),color: Colors.pink,),
          Container(child: Icon(Icons.backup),color: Colors.grey,),
          Container(child: Icon(Icons.book),color: Colors.lightGreenAccent,),
          Container(child: Icon(Icons.camera),color: Colors.purple,),
          Container(child: Icon(Icons.person),color: Colors.brown,),
          Container(child: Icon(Icons.print),color: Colors.greenAccent,),
          Container(child: Icon(Icons.phone),color: Colors.pinkAccent,),
          Container(child: Icon(Icons.notes),color: Colors.purple,),
          Container(child: Icon(Icons.music_note),color: Colors.amber,),
        ],
      ),
    );

  }

}

