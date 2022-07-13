import 'package:flutter/material.dart';


class YoWhatsapp extends StatelessWidget {
 // const YoWhatsapp({Key? key}) : super(key: key);
  var choice = ["Indox", "Privacy", "Settings","Help"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(title: Text("YoWhatsapp"),backgroundColor: Colors.green[800],
            actions:[
              IconButton(onPressed: (){
                print("Search Icon Clicked");
              }, icon: Icon(Icons.search)),
              PopupMenuButton(
                  onSelected: (String? newItem){
                    print(newItem);
                  },
                  itemBuilder: (BuildContext
                  context){
                    return choice.map((String myChoice){
                      return PopupMenuItem(child: Text(myChoice),
                          value:myChoice);
                    }).toList();

                  })
            ],
            bottom:
            TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt_rounded),
                ),
                Tab(text: "Chats",),
                Tab(text: "Status",),
                Tab(text: "Calls",),
              ],),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("FLoating Action Button Clicked");
            },
            child: Icon(Icons.add),backgroundColor: Colors.green,

          ),
        )
    );
  }
}
