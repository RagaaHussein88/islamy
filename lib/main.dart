import 'package:flutter/material.dart';
import 'package:untitled1/Home/homescreen.dart';
import 'package:untitled1/Home/suradetails/suradetails.dart';

import 'package:untitled1/mytheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Islami',
   routes: {
     suradetails.routeName:(context)=>suradetails(),
    homescreen.routeName:(context)=>homescreen(),
 },
 initialRoute: homescreen.routeName,
  theme:mythemedata.lighttheme,

);
  }


}