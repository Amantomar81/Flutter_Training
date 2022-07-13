import 'package:flutter/material.dart';

class Fundamental extends StatelessWidget {
  const Fundamental({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: SizedBox(
              child: Padding(padding: EdgeInsets.all(10.0),
                child: Text(
                  "Hello Flutter",
                  style: TextStyle(
                    fontSize: 40.0,fontWeight: FontWeight.bold,color: Colors.black87
                  ),
                ),
              ),
              width: 150.0,
              height: 150.0,
            ),
            width: 350.0,
            height: 350.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
