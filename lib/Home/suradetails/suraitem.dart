import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Home/suradetails/suradetails.dart';

class suraitem extends StatelessWidget {
String suraname;
int index;
suraitem(this.suraname,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, suradetails.routeName,
      arguments:suradetailsarguments(suraname:suraname,index: index),);
        },
      child:Container(

      padding: EdgeInsets.all(12),
      child:Text('$suraname',
      style:Theme.of(context).textTheme.subtitle1,
    ),
    ),
    );

  }
}
