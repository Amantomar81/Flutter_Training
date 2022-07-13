import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(title: Text("Widget Fundamentals")),
        body: Center(
          child: Container(
            child: Text(
              "Welcome my app",
              style: TextStyle(color: Colors.black, fontSize: 40, fontFamily: 'DancingScript'),
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}