import 'package:flutter/material.dart';

class DataTableDemo extends StatelessWidget {
  const DataTableDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Table Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Paticipants Records",style:
            TextStyle(fontSize: 24, color: Colors.blue),),
            DataTable(
                columns: [
                  DataColumn(label: Text("RollNo.")),
                  DataColumn(label: Text("Name")),
                  DataColumn(label: Text("Branch")),
                ],
    rows: [
      DataRow(cells:[
        DataCell(Text("101")),
    DataCell(Text("Aman Kumar")),
    DataCell(Text("CSE")),
    ]),
    DataRow(cells:[
    DataCell(Text("102")),
    DataCell(Text("vivek Kumar")),
    DataCell(Text("ME")),
    ]),
    DataRow(cells:[
    DataCell(Text("103")),
    DataCell(Text("manish Kumar")),
    DataCell(Text("ECE")),
    ]),
    ],),
        ],
      ),
    ),
    );
  }
}
