import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listviewcustm.dart';

void main(){
  runApp(DevicePreview(
    isToolbarVisible: true,
    builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: tabbarexx(),

    ),
  ));
}
class tabbarexx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(length: 3,
       child: Scaffold(
         appBar: AppBar(foregroundColor: Colors.white,
           title:Text ("Tabs Demo"),
           actions: [
             PopupMenuButton(itemBuilder: (context){
               return[
                 PopupMenuItem(child: Text("settings")),
                 PopupMenuItem(child: Text("logout")),
                 PopupMenuItem(child: Text("privacy"))
               ];

       })
           ],
           bottom: TabBar(
             indicatorColor: Colors.red,
             unselectedLabelColor: Colors.black,
             labelColor: Colors.yellow,
               tabs:[
         Tab(
           child:Text ("calls"),
           icon:Icon(Icons.call_made),
         ),
         Tab(
           child: Text("Missed"),
           icon:Icon(Icons.call_missed),
         ),
         Tab(
           child: Text("Recieved"),
           icon:Icon(Icons.call_received),
         ),


          ]),
         ),
         body: TabBarView(children: [
             listviewcustm(),
           listviewcustm(),
           listviewcustm(),

       ],)),);
  }

}