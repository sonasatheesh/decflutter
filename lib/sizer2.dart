import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sizer Widget Example'),
        ),
        body: Column(
          children: [
            Container(
              width: 200.0,
              height: 100.0,
              color: Colors.blue,
              child: Center(
                child: Text('Fixed Size Container'),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text('Expanded Container'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}