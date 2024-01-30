import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    isToolbarVisible: true,
    builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Stackeg2(),

    ),
  ));
}

class Stackeg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Positioned(
            child: Container(
              color: Colors.lime[300],
              height: 1000,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.only(),
              ),

            ),
          ),
          Positioned(
            child: Container(
              color: Colors.white,
              height: 1000,
              width: 400,
            ),
            top: 150,
          ),
          Positioned(
            child: Container(
              child: Image.asset(
                "assets/icons/girl.jpg",
                fit: BoxFit.fill,
              ),
              color: Colors.blueAccent,
              height: 150,
              width: 150,
            ),
            top: 80,
            left: 130,
          )
        ],
      ),
    );
  }
}