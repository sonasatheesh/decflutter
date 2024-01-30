import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(DevicePreview(
    isToolbarVisible: true,
    builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: staggerd(),

    ),
  ));

}
class staggerd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 2,
            child: Container(child:Image(image: AssetImage("assets/icons/moon.png"),height: 100,width: 100,),

             ),

          ),
      StaggeredGridTile.count(
        crossAxisCellCount: 1,
        mainAxisCellCount: 2,
        child: Container(child:Image(image: AssetImage("assets/icons/moon.png"),height: 100,width: 100,) ,
          ),
      ),
      StaggeredGridTile.count(
        crossAxisCellCount: 2,
        mainAxisCellCount: 2,
        child: Container(child:Image(image: AssetImage("assets/icons/moon.png"),height: 100,width: 100,),
        ),
      ),
      StaggeredGridTile.count(
        crossAxisCellCount: 4,
        mainAxisCellCount: 2,
        child: Container(child: Image(image: AssetImage("assets/icons/moon.png"),height: 100,width: 100,),
          ),
      ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(child: Image(image: AssetImage("assets/icons/moon.png"),height: 100,width: 100,)),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(child:Image(image: AssetImage("assets/icons/moon.png"),height: 100,width: 100,),
              ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 2,
            child: Container(child:Image(image: AssetImage("assets/icons/moon.png"),height: 100,width: 100,),
              ),

          ),













        ],
      ),
    );

  }

}