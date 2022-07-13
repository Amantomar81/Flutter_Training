import 'package:flutter/material.dart';
import 'package:flutter_trainingfirst/10A-ListTileNavigation.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Tile Demo"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person_add_alt_1_rounded),
            title: Text("Aman Kumar"),
            subtitle: Text("Dveloper"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListTileNavigation(title: "Aman Kumar",des:'Developer');
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_rounded),
            title: Text("Amit Kumar"),
            subtitle: Text("Full Stack"),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListTileNavigation(title: "Amit Kumar",des:'Tester');
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_rounded),
            title: Text("vivek Kumar"),
            subtitle: Text("Hacker"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_rounded),
            title: Text("Sandeep sharma"),
            subtitle: Text("Tester"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_rounded),
            title: Text("Aman Kumar"),
            subtitle: Text("Dveloper"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_rounded),
            title: Text("Aman Kumar"),
            subtitle: Text("Dveloper"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_rounded),
            title: Text("Aman Kumar"),
            subtitle: Text("Dveloper"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_rounded),
            title: Text("Aman Kumar"),
            subtitle: Text("Dveloper"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_rounded),
            title: Text("Aman Kumar"),
            subtitle: Text("Dveloper"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_rounded),
            title: Text("Aman Kumar"),
            subtitle: Text("Dveloper"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_rounded),
            title: Text("Aman Kumar"),
            subtitle: Text("Dveloper"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_rounded),
            title: Text("Aman Kumar"),
            subtitle: Text("Dveloper"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_rounded),
            title: Text("Aman Kumar"),
            subtitle: Text("Dveloper"),
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
