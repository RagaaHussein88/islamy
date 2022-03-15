import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Taps/Moshaf.dart';
import 'Taps/hadeth.dart';
import 'Taps/radio.dart';
import 'Taps/sebha.dart';

class homescreen extends StatefulWidget{
  static const String routeName='homescreen';

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
 int currentindex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       Image.asset('assets/images/background.png',width: double.infinity,fit: BoxFit.fill,),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Islami',
                  style: Theme.of(context).textTheme.headline6,),
            ),

          bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentindex,
              onTap: (index){
                currentindex=index;
                setState(() {

                });
              },
              items:[
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/moshaf_blue.png')),label: 'Moshaf',
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/hadeth.png')),label: 'Hadeth'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png')),label: 'Sebha'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')),label: 'Radio',
              ),

            ]
          ),
        body:Container(
          padding: EdgeInsets.all(8),
       child: tabs[currentindex],
        ),)
    ],


       );
  }
   var tabs=[
     moshaf(),
     hadeth(),
     sebha(),
     radio(),];
}