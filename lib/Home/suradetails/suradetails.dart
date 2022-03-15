import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/Home/suradetails/itemverses.dart';

class suradetails extends StatefulWidget {
static const String routeName='suradetails';

  @override
  State<suradetails> createState() => _suradetailsState();
}

class _suradetailsState extends State<suradetails> {
List<String> verses=[];

@override
  Widget build(BuildContext context) {
  suradetailsarguments argu =ModalRoute.of(context)?.settings.arguments as suradetailsarguments;
 if(verses.length==0)
  loadFile('${argu.index+1}' );

  return Stack(
    children: [
      Image.asset('assets/images/background.png',width: double.infinity,
      fit:BoxFit.fill),
      Scaffold(
      appBar: AppBar(
      centerTitle: true,
        title: Text('${argu.suraname}',
        style: Theme.of(context).textTheme.headline6,
        ),
  ),
       body:  verses.length==0?
       CircularProgressIndicator():
       ListView.separated(itemBuilder: (_,index){
         return itemverses(verses[index],index+1);
         },
       separatorBuilder: (context,index){
            return Container(
            height: 1,
           width: double.infinity,
            margin: EdgeInsets.all(8),
          color: Theme.of(context).primaryColor,
         );
  },
       itemCount:verses.length,
       ),

      )
    ],
    );
  }

void loadFile( String filename) async {
 String filecontent=  await rootBundle.loadString('assets/files.$filename.txt');
 List <String> verses=filecontent.split('\n');
 this.verses=verses;
 print(verses);

 setState(() {

 });
 print(verses);
}
}
class suradetailsarguments{
 String suraname;
 int index;
 suradetailsarguments({ required this.suraname, required this.index});
}
