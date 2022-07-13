import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tab Bar Demo"),),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Container(
              child: TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.green,
                tabs: [
                  Tab(
                    child: Icon(Icons.camera_alt_rounded),
                  ),
                Tab(text: "Chats",),
                Tab(text: "Status",),
                  Tab(text: "Calls",),
              ],),
            ),
            Expanded(
           child: Container(
              child: TabBarView(
                children: [
                  Center(
                    child: Text("Camera"),
                  ),
                  Center(
                    child: Text("Home Secreen"),
                  ),
                  Center(
                    child: Text("About Screen"),
                  ),
                  Center(
                    child: Text("Services Screen"),
                  )
                ],
              ),
            )
            ),
          ],
        ),
      ),
    );
  }
}
