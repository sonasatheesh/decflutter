import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    isToolbarVisible: true,
    builder: (BuildContext context) =>
        MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: flutterUi(),
        ),
  ));
}
class flutterUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: Colors.yellow,
        backgroundColor: Colors.red,

        title: Text("Myapp"),
      ),
      body: Container(color: Colors.blue,height: double.infinity,width: double.infinity,
        decoration: BoxDecoration(image:DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1483232539664-d89822fb5d3e?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG8lMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww"),fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          // crossAxisAligment:CrossAxisAlignment.start,
          children:[
            Image(image: AssetImage("assets/icons/fb.png"),height: 100,width: 100,),

            Text(
              "Welcome",
              style: TextStyle(color: Colors.black,fontStyle: FontStyle.italic,fontSize:50,fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ),
    );
  }
}