import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Home/suradetails/suradetails.dart';

class itemverses extends StatelessWidget {
  String text;
  int index;
  itemverses(this.text,this.index);
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(12),
      child:Text('$text ${index}',
        style:Theme.of(context).textTheme.subtitle1,
        textAlign: TextAlign.center,
      ),
    );

  }
}
