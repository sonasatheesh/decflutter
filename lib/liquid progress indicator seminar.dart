import 'package:device_preview/device_preview.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    isToolbarVisible: true,
    builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: HomePage(),

    ),
  ));
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("liquid progress indicator"),
        elevation: 0.0,
      ),
      body: Center(
        child: Container(
          alignment:Alignment.center ,
          height: 180.0,
          width: 200.0,


          child: LiquidCircularProgressIndicator(
            value: 0.8,
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            backgroundColor: Colors.white,
            borderColor: Colors.black54,
            borderWidth: 4.0,
            direction: Axis.vertical,
            center: Text("90%.."),
          ),
        ),
      ),
    );
  }
}
