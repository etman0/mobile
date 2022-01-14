import'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}
class _TestState extends State<Test>{
  Future getData()async{
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  var response = await http.get(url);
  var responsebody = convert.jsonDecode(response.body);
  print(responsebody);
  print(response.statusCode);
  return responsebody;
  }
/*  @override
  initState(){
    getData();
    super.initState();
  }*/
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Container(
    child: Scaffold(
      appBar: AppBar(
        title: Text(
          'test'
        ),
      ),
      body: FutureBuilder(
          future:getData() ,

          builder: (BuildContext context,AsyncSnapshot snapshot)
      {
        if(snapshot.hasData){
 return ListView.builder(itemCount:snapshot.data.length,
   itemBuilder:(context,i){
   return Container(child:Text(snapshot.data[i]['title']));
   });

        }
        return CircularProgressIndicator();
      }
      ),
    ),
  );
  }
}