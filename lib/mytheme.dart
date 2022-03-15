import 'package:flutter/material.dart';

class mythemedata{
  static const colorblack= Color.fromARGB(255, 36, 36, 36);
  static const colorgold= Color.fromARGB(255, 183, 147, 95);
  static var lighttheme=ThemeData(
    primaryColor:colorgold,
  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: colorblack),
  color: Colors.transparent,
    //shadow of app bar
      elevation:0,
  ),
     textTheme: TextTheme(
      headline6: TextStyle(
      color:colorblack,
          fontSize:30,
        fontWeight:FontWeight.bold,
      ),
       subtitle1: TextStyle(
         fontSize: 25,
         fontWeight: FontWeight.bold,
       ),
    ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(

        backgroundColor: colorgold,
        selectedItemColor: colorblack,
        unselectedItemColor: Colors.white,
      ),
bottomAppBarColor: colorgold,
  );

  static var darktheme=ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
    ),
  );





}