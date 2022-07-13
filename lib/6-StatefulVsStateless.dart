import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int x = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: Container(
              child: ElevatedButton(
                onPressed: (){
                  setState((){
                    x = 20;
                  });
                  if(x>10){
                    print("Hello this is an If Statement");
                  }
                  else{
                    print("Hello this is an else statement");
                  }
                },
                child: Text("Button"),
              ),
            ),
          ),
        )
    );
  }
}
