import 'package:flutter/material.dart';
import'package:jghh/components/mydrawer.dart';
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();

}
class _CategoriesState extends State<Categories>{
  @override
  Widget build(BuildContext context) {
return Directionality(
  textDirection: TextDirection.rtl,

  child:   Scaffold(

    appBar:AppBar(

      title:Text('الاقسام'),
centerTitle: true,


    ) ,

    drawer: Mydrawer(),

    body: GridView(
 gridDelegate:
 SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
children:<Widget> [
      InkWell(
  child:   Card(



    child: Column(
      children:<Widget> [
        Expanded(child:
        Image.asset('images/14.png',
          fit: BoxFit.contain,)),
Container(
  child: Text('samsung',
    style: TextStyle(fontSize:20,color: Colors.black ),),
)
      ],
    ),

  ),
        onTap: (){},
),
  InkWell(
  child:   Card(



    child: Column(
      children:<Widget> [
        Expanded(child:
        Image.asset('images/13.jpg',
          fit: BoxFit.contain,)),
Container(
  child: Text('huawei',
    style: TextStyle(fontSize:20,color: Colors.black ),),
)
      ],
    ),

  ),
    onTap: (){

    },
  ),
 InkWell(
  child:   Card(



    child: Column(
      children:<Widget> [
        Expanded(child:
        Image.asset('images/16.png',
          fit: BoxFit.contain,)),
Container(
  child: Text('samsung',
    style: TextStyle(fontSize:20,color: Colors.black ),),
)
      ],
    ),

  ),
   onTap: (){
     Navigator.of(context).pushNamed('samsung');
   },
),

  InkWell(
  child:   Card(



    child: Column(
      children:<Widget> [
        Expanded(child:
        Image.asset('images/12.png',
          fit: BoxFit.contain,)),
Container(
  child: Text('realme',
    style: TextStyle(fontSize:20,color: Colors.black ),),
)
      ],
    ),

  ),
),
  InkWell(
  child:   Card(



    child: Column(
      children:<Widget> [
        Expanded(child:
        Image.asset('images/15.png',
          fit: BoxFit.contain,)),
Container(
  child: Text('oppo',
    style: TextStyle(fontSize:20,color: Colors.black ),),
)
      ],
    ),

  ),
    onTap: (){},
),

  InkWell(
  child:   Card(



    child: Column(
      children:<Widget> [
        Expanded(child:
        Image.asset('images/14.png',
          fit: BoxFit.contain,)),
Container(
  child: Text('xiaomi',
    style: TextStyle(fontSize:20,color: Colors.black ),),
)
      ],
    ),

  ),
    onTap: (){},
),
],
    ),

  ),
);

  }
}



/*import 'package:flutter/material.dart';
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();

}
class _CategoriesState extends State<Categories>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}*/
