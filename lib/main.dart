import 'package:flutter/material.dart';
import 'package:untitled1/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  title: 'Islami',
   routes: {
    homescreen.routeName:(context)=>homescreen(),
 },
 initialRoute: homescreen.routeName,
);
  }


}