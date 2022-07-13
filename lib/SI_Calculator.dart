import 'package:flutter/material.dart';

class SIcalculator extends StatefulWidget {
  const SIcalculator({Key? key}) : super(key: key);

  @override
  State<SIcalculator> createState() => _SIcalculatorState();
}

class _SIcalculatorState extends State<SIcalculator> {
  TextEditingController principalController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController termController = TextEditingController();
  String displayResult = "";
  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SI Calculator"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Image(image: NetworkImage('https://cdn.britannica.com/22/187022-138-64E249E2/facts-paper-money.jpg?w=800&h=450&c=crop'),
              width: 300,
              height: 300,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Principal",
                hintText: "Enter your principal amount",
                labelStyle: TextStyle(fontSize: 20,color: Colors.black87),
                border:OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Rate",
                hintText: "Enter your Rate.",
                labelStyle: TextStyle(fontSize: 20,color: Colors.black87),
                border:OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Term",
                hintText: "Enter your years",
                labelStyle: TextStyle(fontSize: 20,color: Colors.black87),
                border:OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(value: isChecked,
                    onChanged: (b){
                  setState((){
                    isChecked = b!;
                  });
                    }),
                Text("Are you agree with Terms")
              ],
            ),
            Row(
              children: [
                Expanded(child: ElevatedButton(
                    onPressed: isChecked ? (){
                      setState((){
                        displayResult = _calculateResult();
                      });
                    }
                    :null,
                    child: Text("Calculate",
                    style: TextStyle(fontSize: 20),)
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(child:
                ElevatedButton(
                    onPressed: (){
                      setState((){
                        principalController.text = "";
                        rateController.text = "";
                        termController.text = "";
                        displayResult = "";
                        isChecked = false;
                      });
                    },
                    child: Text("Reset",
                    style: TextStyle(fontSize: 20),
                    )),
                ),
              ],
            ),
            Text(displayResult,
              style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
  
  String _calculateResult() {
    double principal = double.parse(principalController.text);
    double rate = double.parse(rateController.text);
    double term = double.parse(termController.text);
    
    double totalAmount = principal+((principal * rate * term) / 100);
    
    String result = 'After $term years, Your Investment will be worth $totalAmount Rupees';
    return result;
}
}



