import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    home: homescreen(),
  )));
}
class homescreen extends StatefulWidget{
  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow[300],
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Text("login page",
              style: TextStyle(
                color: Colors.red, fontSize: 30,fontWeight: FontWeight.w200),
              ),
            Padding(
                padding: const EdgeInsets.only(
                  left: 60,right: 60,bottom: 20,top: 60),
              child: TextField(
                decoration:InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  hintText: "username",
                  labelText: "name"
                ),

                ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  left: 60, right: 60, top: 10,bottom: 30,),
              child: TextField(
                obscureText: showpass,
                obscuringCharacter: '*',
                decoration:InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(onPressed: () {
                    setState(() {
                      if(showpass){
                        showpass=false;
                      }
                      else{
                        showpass=true;
                      }
                    });
                  }, icon: Icon(showpass==true ? Icons.visibility_off :Icons.visibility),),
                  hintText: "password",
                  labelText: "password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: () {}, child: Text("login"),
             style: ElevatedButton.styleFrom(backgroundColor: Colors.red,foregroundColor: Colors.green),
            ),
            TextButton(
                onPressed: () {},
                child: Text("not a user ! create a new account"))


          ],
        ),

      ),
    );

  }
}

