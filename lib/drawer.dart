import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    home: drawer(),
  )));
}
class drawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(
       title: Text("drawer"),
     ),
     drawer:Drawer(backgroundColor: Colors.cyan,
       child: ListView(
         children: [
           UserAccountsDrawerHeader(decoration:BoxDecoration(
           image: DecorationImage(image:AssetImage("assets/icons/background.jpg"),fit: BoxFit.fill)
       ),
           accountName: Text("sona"), accountEmail: Text("sonasatheesh@gmail.com"),
             currentAccountPicture: Image(image:AssetImage("assets/icons/fb.png"),
           ),
       otherAccountsPictures: [
         CircleAvatar(backgroundImage: AssetImage("assets/icons/fb.png")),
       ],
           ),
           
           ListTile(
             leading:Icon(Icons.home) ,
             title: Text("home"),
           ),
           ListTile(
             leading:Icon(Icons.person) ,
             title: Text("profile"),
           ),
           ListTile(
             leading:Icon(Icons.settings) ,
             title: Text("settings"),
           ),
           ListTile(
             leading:Icon(Icons.logout) ,
             title: Text("logout"),
           )


         ],

       ),

     ),
   );
  }

}