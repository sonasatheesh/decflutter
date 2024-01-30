import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(
    isToolbarVisible: true,
    builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: stackeg(),

    ),
  ));
}
class stackeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child:Stack(
        children: [
          Container(color: Colors.red,height: 300,width: 300,),
          Positioned(child: Container(color: Colors.yellow,)
            ,height:200,width:40,
          left:50,top:50,),
          Positioned(child: Container(color: Colors.pink,)
            ,height: 200,width: 50,
          left: 40,top: 30,),


],
      ),

      ),
    );
  }

}