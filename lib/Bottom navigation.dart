import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(
    isToolbarVisible: true,
    builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: bottomnavigation(),

    ),
  ));
}
class bottomnavigation extends StatefulWidget {


  @override
  State<bottomnavigation> createState() => _bottomnavigationState();

}

class _bottomnavigationState extends State<bottomnavigation> {
  var screen=[
    Text("Home"),
    Text("Category"),
    Text("Account"),
    Text("Cart"),
    Text("Notification"),

  ];
  var index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom navigation"),
      ),
      bottomNavigationBar:BottomNavigationBar(
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.red,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        onTap: (tapindex){
          setState(() {

          });
          index=tapindex;

        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon:Icon(Icons.category),label: "category"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "account"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "shopping cart"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "notifications"),
      ],),
      body: Center(child: screen[index]),
    );

  }
}
