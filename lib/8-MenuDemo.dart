import 'package:flutter/material.dart';
class MenusDemo extends StatefulWidget{
  const MenusDemo ({Key? key}) : super();

  State<MenusDemo> createState() => _MenuDemoState();

}

class _MenuDemoState extends State<MenusDemo> {
var cities = ["Delhi","Mumbai", "Kolkatta","chennai"];
var firstCity = "Delhi";
var choice = ["Indox", "sent Items", "Junk-mails","Help"];

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu Demo"),
          actions:[
            IconButton(onPressed: (){
              print("Helped Icon Clicked");
            }, icon: Icon(Icons.search)),
            TextButton(
              onPressed: (){
                print("Login button clicked");
              }, child: Text("Login"),
            ),
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
          ]
        ),
          body: Column(
          children: [
            Text(
              "Dropdown Menu",
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            DropdownButton(
                items: cities.map((String dropDownItems){
                  return DropdownMenuItem(
                    child: Text(dropDownItems, style: TextStyle(fontSize: 20,
                    color :(firstCity == dropDownItems)?Colors.red: Colors.black),
                    ),
                    value: dropDownItems,
                  );
                }).toList(),
                onChanged:(String? newItem){
                  setState((){
                    firstCity = newItem!;
                  });
                },
              value: firstCity,
            )
          ],
          )
      )
    );
  }
}
