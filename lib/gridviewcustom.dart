import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridviewcustm(),));
}
class Gridviewcustm extends StatelessWidget{
   var images=["assets/icons/fb.png","assets/icons/fb.png","assets/icons/fb.png","assets/icons/fb.png","assets/icons/fb.png","assets/icons/fb.png","assets/icons/fb.png"];
   var tittle=["1","2","3","4","5","6","7"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
         childrenDelegate: SliverChildBuilderDelegate((context,index){
           return Card(
             child: Column(
               children: [
                 Image(image: AssetImage(images[index]),height: 80,width: 80,),
                 Text(tittle[index]),
               ],
             ),
           );

    }
    ,childCount: images.length)),
    );
  }

}