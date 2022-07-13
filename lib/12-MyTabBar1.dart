import 'package:flutter/material.dart';

import 'Screens/HomeScreen.dart';

class MyTabBar1 extends StatelessWidget {
  const MyTabBar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
      appBar: AppBar(title: Text("Tab Bar Demo"),backgroundColor: Colors.green,
        bottom:
           TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.green,
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt_rounded),
              ),
              Tab(text: "Chats",),
              Tab(text: "About",),
              Tab(text: "Services",),
            ],),
        ),

      body:
      TabBarView(
                    children: [
                      Center(
                        child: Text("Camera"),
                      ),
                      Center(
                        child: HomeScreen(),
                      ),
                      Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Text("About Application",
                                style: TextStyle(fontSize: 30, color: Colors.blue),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SelectableText(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting "
                                      "industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                                      " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                                      " It has survived not only five centuries, but also the leap into electronic typesetting, remaining "
                                      "essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing "
                                      "Lorem Ipsum passages, and more recently with desktop publishing "
                                      "software like Aldus PageMaker including versions of Lorem Ipsum.",
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify,),
                            )
                          ],
                        ),
                      ),
                      Center(
                        child: Image(image: NetworkImage('https://www.iconpacks.net/icons/1/free-settings-icon-778-thumb.png'),),
                      ),
                    ],
                  ),
                )
    );
  }
}
