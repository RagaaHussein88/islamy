import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homescreen extends StatelessWidget{
  static const String routeName='homescreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(title: Text('Islamy'),));
  }
}