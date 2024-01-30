import 'package:decflutter/listview.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gridviewextend1.dart';
import 'listviewcustm.dart';
void main(){
  runApp(DevicePreview(
    isToolbarVisible: true,
    builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: tabbar(),

    ),
  ));
}
class tabbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,

        title: Text("tabbar"),
        actions: [
          PopupMenuButton(itemBuilder: (context){
            return[
              PopupMenuItem(child: Text("settings")),
    PopupMenuItem(child: Text("logout")),
    PopupMenuItem(child: Text("invite")),

            ];
    })
        ],
        bottom: TabBar(
          indicatorColor: Colors.red,
            unselectedLabelColor: Colors.black,
            labelColor: Colors.yellow,

            tabs:[
              Tab(
                icon:Icon(Icons.camera_alt),
              ),
              Tab(
            child:Text ("chat"),
          ),
          Tab(
            child: Text("status"),
          ),
          Tab(
            child: Text("contacts"),
          ),
        ]),
        ),
          body: TabBarView(children: [
            listviewcustme(),
            listviewcustme(),
            listviewcustme()
          ],)

      ),

    );

  }

}