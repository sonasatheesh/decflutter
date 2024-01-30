import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: HotelHomePage(),));

}
final List rooms=[
  {
    "image":"assets/icons/hotel.png",
    "title":"Awoesome room near kakkanad",

  },
{
  "image":"assets/icons/hotel.png",
  "title":"Awoesome room near kakkanad",
},
  {
    "image":"assets/icons/hotel.png",
    "title":"Awoesome room near Kakkanad"
  },
  {

  }
];

class HotelHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 18.0,

          ),
        ],
      ),
    );
  }

}
Widget _buildRooms(BuildContext,context,int index){
  var room=rooms[index % rooms.length];
  return Container(
    margin: const EdgeInsets.all(20.0),
    child: ClipRect(
      borderRadius:BorderRadius.circular(5.0),
      child: Container(color: Colors.greenAccent,),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children:<Widget>[
              Image.asset(room['image']),
              Positioned(
                right: 10,
                left:10,
                child: Icon(Icons.star,color: Colors.grey.shade800,size: 20.0,
                ),

              ),
              const Positioned(
                right: 8,
                  left: 8,
                  Padding:const
                  color:

                  child: const Text("\$40"))

            ],

      ),
        ],
      ),

    ) ,

  );
}