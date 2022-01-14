import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:jghh/components/moblist.dart';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
class Samsung extends StatefulWidget {
  @override
  _SamsungState createState() => _SamsungState();

}
class _SamsungState extends State<Samsung>{

  Future getData() async {
    var url = Uri.parse("http://ahmadkouja7.000webhostapp.com/index.php?cat=1");
//var data={"cat":"1"};
    var response = await http.post(url,/*body: data*/);
var responsebody = jsonDecode(response.body);
print(responsebody);
return responsebody;

  }
  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Directionality(textDirection: TextDirection.ltr,
       child: Scaffold(
         appBar: AppBar(
           title: Text('samsung'),
centerTitle: true,
         ),
         body: FutureBuilder(
           future:getData(),
           builder:(BuildContext context, AsyncSnapshot snapshot){
             if(snapshot.hasData) {
               return ListView.builder(
                   itemCount: snapshot.data.length,
                   itemBuilder: (context, i) {
                     return MobList(battery: snapshot.data[i]['battery'],
                       screen: snapshot.data[i]['screen'],
                       cpu: snapshot.data[i]['cpu'],
                       name: snapshot.data[i]['name'],
                       system: snapshot.data[i]['system'],
                     );
                   }

               );
             }
             return Center(child: CircularProgressIndicator());
           }

         )
       ) );
  }

}

