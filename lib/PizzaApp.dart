
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screens/Screen2.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class PizzaApp extends StatefulWidget {
  const PizzaApp({Key?  key}) : super(key: key);

  @override
  State<PizzaApp> createState() => _PizzaAppState();
}

class _PizzaAppState extends State<PizzaApp> {
  var _initialValue = 0.0;
  bool _isPaid = false;
  bool _cod = false;
  DateTime today = DateTime.now();
  TimeOfDay todayTime = TimeOfDay.now();
  String pizzaTopping = "";
  String pizzaSize = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PizzaApp"),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Text('Select your Topping',
              style: TextStyle(fontSize: 20,
              )),
            CheckboxGroup(labels:[
                "onion",
              "Black olive",
              "Mushrooms",
              "Green paper"
              "Corn",
              "corn"
              ],
              onSelected:(List<String> selected){
                //print(selected);
                    setState((){
                      pizzaTopping = selected.toString();
                    });
                },
            ),
            Text('Select Pizza Size',
                style: TextStyle(fontSize: 20,
                )),
            RadioButtonGroup(labels: [
              "Small",
              "Medium",
              "Large",
            ],
            onSelected: (String selected){
              //print(selected);
              setState((){
                pizzaSize = selected;
              });
            },
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Pizzas Quantity',
                      style: TextStyle(fontSize: 20,
                      )),
                  Slider(
                      value: _initialValue,
                      onChanged: (newQty){
                    setState((){
                      _initialValue = newQty;
                    });
                    print('Pizza Quantity: $_initialValue');
                      },
                  min: 0,
                    max: 10,
                    divisions: 10,
                    label: '$_initialValue',
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Payment Status',
                      style: TextStyle(fontSize: 20,
                      )),
                  Switch(value: _isPaid,
                      onChanged: (bool status){
                    setState((){
                      _isPaid = status;
                    });
                       print('Payment Stattus: $_isPaid');
                      }),

                  Text(_isPaid ? "Yes" : "No",
                    style: TextStyle(fontSize: 20),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Go for COD',
                      style: TextStyle(fontSize: 20,
                      )),
                  Checkbox(value: _cod,
                    onChanged: ( b ){
                    setState((){
                      _cod = b!;
                    });
                    },
                      ),

                  Text(_cod ? "COD" : 'Online',
                    style: TextStyle(fontSize: 20),)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Select Delivery Date',
                      style: TextStyle(fontSize: 20,
                      )),
                  IconButton(onPressed: (){
                    selectDate(context);
                  }, 
                      icon: Icon(Icons.date_range)),
                  Text('${today.day}-${today.month}-${today.year}',
                      style: TextStyle(color: Colors.red,
                          fontWeight : FontWeight.bold )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Select Delivery Time',
                      style: TextStyle(fontSize: 20,
                      )),

                  IconButton(onPressed: (){
                    selectTime(context);
                  },
                      icon: Icon(Icons.access_time)),
                  Text('${todayTime.hour}:${todayTime.minute}',
                  style: TextStyle(color: Colors.red,
                  fontWeight : FontWeight.bold )),
                ],
              ),
            ),
            ElevatedButton(onPressed: (){
              showPreview(context);
            },
                child: Text(
                  "Previw Order"
                ))
          ],
        ),
      ),
    );
  }
  Future<void> selectDate(BuildContext context) async {
   DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: today,
      firstDate: DateTime(2000),
      lastDate: DateTime(2030));

      //print(pickedDate);
    if(pickedDate!=null && pickedDate != today){
      setState((){
        today = pickedDate;
      });
    }
  }

  void selectTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(context: context, initialTime: todayTime);
    setState((){
      todayTime = pickedTime!;
    });
  }

  void showPreview(BuildContext context) {
    var alertDialog = CupertinoAlertDialog(
      title: Text('Pizza Order Status',
          style: TextStyle(
              color: Colors.deepOrange,
          fontWeight : FontWeight.bold,
          fontSize: 28)
      ),
      content: Text(
        'Topping: $pizzaTopping \nPizza Size: $pizzaSize \n'
            'Pizza Quantity: $_initialValue'
      ),
      actions: [
        Row(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context,
                  'S2');
            },
                child: Text("Pay")),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
                child: Text("Change Order"))
          ],
        )
      ],
    );
    showDialog(context: context,
        builder: (context) {
      return alertDialog;
    });
  }
}


//************************************************************

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("pizzzaa"),
//             backgroundColor: Color.fromARGB(255, 48, 10, 182),
//           ),
//           body: Column(
//             children: [
//               Card(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//                 color:Color.fromARGB(255, 150, 132, 216),
//                 child: Row(
//                   // ignore: avoid_unnecessary_containers
//
//                   children:
//                   // ignore: prefer_const_literals_to_create_immutables
//                   [Image(
//                     image: NetworkImage("https://freepngimg.com/save/34411-cheese-pizza-clipart/1538x776"),
//                     width: 150,
//                     height: 150,
//                   ),
//                     Text("cheese pizza",style: TextStyle(fontSize: 25),),
//                     SizedBox(width: 30,)],
//                 ),
//               ),
//               Card(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//                 color:Color.fromARGB(255, 150, 132, 216),
//                 child: Row(
//                   // ignore: avoid_unnecessary_containers
//
//                   children:
//                   // ignore: prefer_const_literals_to_create_immutables
//                   [Image(
//                     image: NetworkImage("https://pngimg.com/uploads/pizza/pizza_PNG43989.png"),
//                     width: 150,
//                     height: 150,
//                   ),
//                     Text("tomato pizza",style: TextStyle(fontSize: 25),),
//                     SizedBox(width: 30,)],
//                 ),
//               ),
//               Card(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//                 color:Color.fromARGB(255, 150, 132, 216),
//                 child: Row(
//                   // ignore: avoid_unnecessary_containers
//
//                   children:
//                   // ignore: prefer_const_literals_to_create_immutables
//                   [Image(
//                     image: NetworkImage("https://purepng.com/public/uploads/large/purepng.com-cheese-pizzafood-pizza-cheese-941524635158r8o0b.png"),
//                     width: 150,
//                     height: 150,
//                   ),
//                     Text("special pizza",style: TextStyle(fontSize: 25),),
//                     SizedBox(width: 30,)],
//                 ),
//               ),
//             ],
//           )
//       )
//   ));
// }