import 'package:flutter/material.dart';

import 'Screen1.dart';


class Screen2 extends StatelessWidget {
  String title = "";
  Screen2({Key? key, required  this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),
        backgroundColor: Colors.green,),
      body: Center(
        child: Container(
          child: ElevatedButton(child:
          Text("Goto screen1",
            style: TextStyle(fontSize: 20),
          ),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
