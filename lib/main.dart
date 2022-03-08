// @dart=2.9
import 'package:flutter/material.dart';
import 'package:login/add_store.dart';
import 'package:login/login_screen.dart';
import 'package:login/onbording_screen.dart';

import 'package:login/setting_screen.dart';
import 'package:login/sgin_in.dart';

import 'details/details_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  //const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: DetailsScreen(),
       theme: ThemeData(
           primarySwatch: Colors.teal,
         ),
     );
  }
}
