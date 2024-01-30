import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main (){
  runApp(DevicePreview(
    isToolbarVisible: true,
    builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: mysplash(),

    ),
  ));

}
class mysplash extends StatefulWidget {  @override
  State<mysplash> createState() => _mysplashState();
}

class _mysplashState extends State<mysplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: Colors.yellow,
        backgroundColor: Colors.red,

        title: Text("sample page"),
      ),
      body: Container(color: Colors.blueGrey,height: double.infinity,width: double.infinity,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          // crossAxisAligment:CrossAxisAlignment.start,
          children:[
           Image(image: AssetImage("assets/icons/fb.png")),
            Text(
              "flutter",
              style: TextStyle(color: Colors.teal,fontStyle: FontStyle.italic,fontSize:50,fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ),
    
  


    );

  }}
