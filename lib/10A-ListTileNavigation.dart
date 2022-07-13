import 'package:flutter/material.dart';

class ListTileNavigation extends StatelessWidget {
  String? title = "";
  String? des = "";
   ListTileNavigation({Key? key, this.title, this.des}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
          title!
      ),),
      body: Center(
        child:
        Column(
          children: [
             Text(
                title!,
                style: TextStyle(fontSize: 24),
              ),
            Text(
              des!,
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}