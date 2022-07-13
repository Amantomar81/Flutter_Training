// ignore_for_file: prefer_const_constructors

//import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_trainingfirst/11-MyTabBar.dart';
import 'package:flutter_trainingfirst/13-DrawerDemo.dart';
import 'package:flutter_trainingfirst/8-MenuDemo.dart';
import 'package:flutter_trainingfirst/FlutterCrud.dart';
import 'package:flutter_trainingfirst/PizzaApp.dart';
import 'package:flutter_trainingfirst/SI_Calculator.dart';
import 'package:flutter_trainingfirst/Screens/Screen0.dart';
import 'package:flutter_trainingfirst/StackDemo.dart';
import 'package:flutter_trainingfirst/WebViewDemo.dart';
import '10-ListTileDemo.dart';

import '14-DataTableDemo.dart';
import '16-TextWidgetsDemo.dart';
import '6-StatefulVsStateless.dart';
import '7-ButtonsDemo.dart';
import '9-BottomNavigationBarDemo.dart';
import 'AnimateWidget.dart';
import 'BottomSheetDemo.dart';
import 'Fundamental.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/Screen1.dart';
import 'Screens/Screen2.dart';
//import 'package:flutter_trainingfirst/BottomNavigationDemo';
import '12-MyTabBar1.dart';
import '13-DrawerDemo.dart';
import '15-Selectable.dart';
import 'YoWhatsapp.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 // await Firebase.initializeApp();

  runApp(
    MaterialApp(
     // home: HomeScreen(),
     // home: Fundamental(),
     // home: BottomNavigationDemo(),
     // home:YoWhatsapp(),
      //home:MenusDemo(),
     // home: ButtonsDemo(),
     // home: MenusDemo(),
     // home: TextFieldDemo(),
      home: SIcalculator(),
     // home: PizzaApp(),
      // home: AnimateWidget(),
      //home: WebViewDemo(),
     // home: BottomSheetDemo(),
      //home: StackDemo(),
     // home: FlutterCrud(),
     //  routes: {
     //    'S0':(context)=>Screen0(title:"Setting"),
     //    'S1':(context)=>Screen1(title: 'Screen-1 (Gallery)',
     //    ),
     //    'S2':(context)=>Screen2(title:"payment"),
     //  },
    ),
  );
}



