import 'package:flutter/material.dart';
import'package:carousel_pro/carousel_pro.dart';
import'package:jghh/components/mydrawer.dart';
class Home extends StatefulWidget{
  State<StatefulWidget> createState(){
    return HomeState();
  }
}

class HomeState extends State<Home> {
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(


        appBar: AppBar(
        actions: <Widget>[
        IconButton(onPressed: null, icon: Icon(Icons.search))
  ],
  // Here we take the value from the MyHomePage object that was created by
  // the App.build method, and use it to set our appbar title.
  title: Text('Mobtech'/*widget.title*/),
  //  leading: IconButton(onPressed: null, icon:Icon(Icons.search)),
  // IconButton(onPressed: null, icon:Icon(Icons.search)),
  ),
  //endDrawer:Drawer(),
  drawer: Mydrawer(),

  body: ListView(
  children:<Widget> [
  Container(
  height:300.0,
  width: double.infinity,
  child: Carousel(
  images: [
  AssetImage('images/1.png',),
  AssetImage('images/2.png',),
  AssetImage('images/2.png',)
  ],
  dotSize: 9,
  dotBgColor: Colors.black.withOpacity(.5),
  dotIncreaseSize: 3,
  dotColor:Colors.white ,
  // showIndicator: false,
  borderRadius: true,
  dotSpacing: 40,
  dotIncreasedColor: Colors.blue,
  //overlayShadowColors: Colors.blue,

  // showIndicator: false,
  //indicatorBgPadding:20 ,
  //moveIndicatorFromBottom: 180.0,
  //noRadiusForIndicator: true,
  overlayShadow: false,
  // overlayShadowColors: Colors.indigo,
  overlayShadowSize: 0.2,
  autoplay: false,
  boxFit:BoxFit.cover,
  radius: Radius.circular(40)

  ),

  ),
  Container(padding:EdgeInsets.all(10) ,
  child: Text('الاقسام',
  style: TextStyle(fontSize:30,color: Colors.blue ),),
  ) ,
  Container(
  height: 120,
  child:ListView(
  scrollDirection:Axis.horizontal ,
  children: [
  Container(
  height: 100,
  width: 100,
  child:ListTile(
  title: Image.asset('images/16.png',width: 80,height: 80,),
  subtitle: Container(child: Text('samsung',textAlign: TextAlign.center,)),
  ),
  ),Container(
  height: 100,
  width: 100,
  child:ListTile(
  title: Image.asset('images/14.png',width: 80,height: 80,),
  subtitle: Container(child: Text('xaiomi',textAlign: TextAlign.center,)),
  ),
  ),
  Container(
  height: 100,
  width: 100,
  child:ListTile(
  title: Image.asset('images/13.jpg',width: 80,height: 80,fit:BoxFit.fill),
  subtitle: Container(child: Text('huawai',textAlign: TextAlign.center,)),
  ),
  ),Container(
  height: 100,
  width: 100,
  child:ListTile(
  title: Image.asset('images/12.png',width: 80,height: 80,),
  subtitle: Container(child: Text('realme',textAlign: TextAlign.center,)),
  ),
  ),
  ],
  )
  ),
  Container(padding:EdgeInsets.all(10) ,
  child: Text('اخر المنتجات ',
  style: TextStyle(fontSize:30,color: Colors.blue  ),),
  ) ,
  //start latest products
  Container(
  height:600 ,
  child: GridView(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2 ) ,
  children:<Widget> [
    InkWell(
      child:GridTile(child:Image.asset("images/7.jpg"),
        footer:Container(
            height: 20,
            color:Colors.black.withOpacity(.5),
            child: Text('oppo reno price 1200\$',
          style: TextStyle(color: Colors.white,fontWeight:FontWeight.w700),
          textAlign:TextAlign.center ,)) , ),
      onTap:(){print('fdghdfg');} ,
    ),

  InkWell(
    child: GridTile(child:Image.asset("images/7.jpg"),
    footer:Container(
    height: 20,
    color:Colors.black.withOpacity(.5),child: Text('oppo reno p30 pro',
    style: TextStyle(color: Colors.white,fontWeight:FontWeight.w700),
    textAlign:TextAlign.center ,)) , ),
  ),
     InkWell(
       child: GridTile(child:Image.asset("images/7.jpg"),
  footer:Container(
  height: 20,
  color:Colors.black.withOpacity(.5),child: Text('oppo reno p30 pro',
  style: TextStyle(color: Colors.white,fontWeight:FontWeight.w700),
  textAlign:TextAlign.center ,)) , ),
     ),
    InkWell(
      child: GridTile(child:Image.asset("images/7.jpg"),
  footer:Container(
  height: 20,
  color:Colors.black.withOpacity(.5),child: Text('oppo reno p30 pro',
  style: TextStyle(color: Colors.white,fontWeight:FontWeight.w700),
  textAlign:TextAlign.center ,)) , ),
    ),
      InkWell(
        child: GridTile(child:Image.asset("images/7.jpg"),
  footer:Container(
  height: 20,
  color:Colors.black.withOpacity(.5),child: Text('oppo reno p30 pro',
  style: TextStyle(color: Colors.white,fontWeight:FontWeight.w700),
  textAlign:TextAlign.center ,)) , ),
      ),
     InkWell(
       child: GridTile(child:Image.asset("images/7.jpg"),
  footer:Container(
  height: 20,
  color:Colors.black.withOpacity(.5),child: Text('oppo reno p30 pro',
  style: TextStyle(color: Colors.white,fontWeight:FontWeight.w700),
  textAlign:TextAlign.center ,)) , ),
     ),
  ],
  ),
  )
  //end
  ],


  ),

  ),
  );
  }
}