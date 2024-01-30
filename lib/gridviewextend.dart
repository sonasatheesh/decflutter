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
          home: gridviewexnd(),

        ),
  ));
}
class gridviewexnd extends StatelessWidget{
  var Iconss=[Icons.ac_unit,Icons.access_alarm,Icons.abc_outlined,Icons.access_alarm_sharp,Icons.ac_unit_rounded,Icons.access_time_filled,Icons.accessibility,Icons.access_time_rounded];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 20),
        itemBuilder: (context,index){
        return Container(
          child: Icon(Iconss[index]),
        );
        }
        ,itemCount: Iconss.length,),
      );
  }

}