import 'package:flutter/material.dart';
class MobList extends StatelessWidget{
  final name;
  final camera;
  final cpu;
  final price;
  final memory;
  final battery;
  final screen;
  final system;
  MobList({this.name,this.camera,this.battery,this.cpu,this.memory,this.price, this.screen, this.system});
  @override
  Widget build(BuildContext context){
    return  InkWell(
      onTap: (){
        Navigator.of(context).pushNamed('mobiledetails');},
      child: Container(
        height:130,
        width: 100,
        child: Card(
          child:Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.asset('images/20.jpg'),
              ), Expanded(flex:2,
                child: Container(alignment:Alignment.topRight,
                    height:120,
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [


                        Text('hvgb',
                          style: TextStyle(fontSize:18,fontWeight:FontWeight.bold ),textAlign: TextAlign.center,),

                        Row(
                          //   mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(child: Row(
                              children: [
                                Text('الكاميرا ', style: TextStyle(fontSize:12,color:Colors.grey),),
                                Text(' : 5 ميجابكسل', style: TextStyle(color:Colors.grey),),
                              ],
                            ))
                            ,Row(
                              children: [
                                Text('المعالج : ', style: TextStyle(fontSize:14,color:Colors.amber,),
                                ),Text(' quadcore', style: TextStyle(fontSize:14,color:Colors.amber,),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          //   mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(child: Row(
                              children: [
                                Row(
                                  children: [
                                    Text('البطاريه: ', style: TextStyle(fontSize:14,color:Colors.grey),),
                                    Text(' 5000ma', style: TextStyle(fontSize:14,color:Colors.grey),),

                                  ],
                                ),
                              ],
                            ))
                            ,Row(
                              children: [
                                Text('الذاكره : ', style: TextStyle(fontSize:14,color:Colors.amber,),)
                                ,Text(' 32 جيجابايت', style: TextStyle(fontSize:14,color:Colors.amber,),)  ],
                            )

                          ],
                        ),


                        Container(margin:EdgeInsets.only(top: 7),child: Text(price,
                            style: TextStyle(color:Colors.red,)),)
                      ],)),
              ),
            ],
          ) ,
        ),
      ),
    );
  }
}