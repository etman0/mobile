import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
class MobileDetails extends StatefulWidget {

  @override
  _MobileDetailsState createState() => _MobileDetailsState();

}
class _MobileDetailsState extends State<MobileDetails>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Directionality(textDirection:TextDirection.ltr ,
       child: Scaffold(
         appBar: AppBar(
           title: Text('details'),
centerTitle: true,

         ),
         body: ListView(
           children:<Widget> [
             Container(
               height: 360,
               child:GridTile(child: Image.asset('images/1.png'),
               footer:Container(height:80,color:Colors.black.withOpacity(.3),alignment: Alignment.center,
                 child: Row(
                   crossAxisAlignment:CrossAxisAlignment.start ,
                   children: [
   Container(
     margin:EdgeInsets.only(right: 190.0),
     padding: EdgeInsets.only(left:10),
     child: Text('oppo reno6',style: TextStyle(color: Colors.white,
      fontSize: 20,fontWeight:FontWeight.w700),
     ),
   ),
      Text('1200\$',style: TextStyle(color: Colors.white,
    fontSize: 20,fontWeight:FontWeight.w700),
   ),
                   ],
                 ),
               ) ,
               ) ,

             ),
             Container(
               padding: EdgeInsets.all(10),
               child:Text('specifications',
                   style:TextStyle(fontSize: 20)) ,
             ),
             Container(
                 padding: EdgeInsets.all(10),

                 child:
             Column(children:<Widget>[
         Container(
           padding: EdgeInsets.all(10),
           color: Colors.white,
           child: Row(
             children: [
               Text('model:',  style:TextStyle(fontSize: 18)),
               Text('oppo reno 6',   style:TextStyle(fontSize: 18,color: Colors.blue) ,)
             ],
           ),
         ), Container(
                 width:MediaQuery.of(context).size.width ,
           padding: EdgeInsets.all(10),
           color: Colors.blue,
           child: RichText(text:
           TextSpan(style: TextStyle(fontWeight:FontWeight.w600  ),children:<TextSpan>[
             TextSpan(text:'screen:' ,style:TextStyle(fontSize: 18)),
             TextSpan(text:'super amoled 5.5 120 HZ HDR10' ,
                 style:TextStyle(fontSize: 18,color: Colors.white)),

           ] ))
                 /*Row(
             children: [
               Text('screen:',  style:TextStyle(fontSize: 18)),
               Text('super amoled 5.5',
                 style:TextStyle(fontSize: 18,color: Colors.white) ,)
             ],
           ),*/
         ), Container(
           padding: EdgeInsets.all(10),
           color: Colors.white,
           child: Row(
             children: [
               Text('processor',  style:TextStyle(fontSize: 18)),
               Text('snapdragon Quadcore 3.3 mhz',   style:TextStyle(fontSize: 18,color: Colors.blue) ,)
             ],
           ),
         ), Container(
           padding: EdgeInsets.all(10),
           color: Colors.blue,
           child: Row(
             children: [
               Text('camera',  style:TextStyle(fontSize: 18)),
               Text('180 megapixel',
                 style:TextStyle(fontSize: 18,color: Colors.white) ,)
             ],
           ),
         ),
             ],))
           ],
         )
       ));
  }
}