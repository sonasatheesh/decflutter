import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(
    isToolbarVisible: true,
    builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: listexample(),

    ),
  ));

}

class listexample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: Colors.white,
        backgroundColor: Colors.green,

        title: Text("listview.separated() "),
      ),
    );
  }}
  var title=["separater1","separater2","separater3","separater4","separater5"];
  var subtitle=["list item1","list item1","list item1","list item1","list item1"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context,index){
        return Card(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),



        ),);
      },
          separatorBuilder: (context,index){
            return Divider(
              thickness: 5,
              color: Colors.red,
            );
          }, itemCount: 5),
    );



  }




