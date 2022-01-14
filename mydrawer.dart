import 'package:flutter/material.dart';
import'package:jghh/pages/categories.dart';
class Mydrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children:<Widget> [
          UserAccountsDrawerHeader(accountName: Text('rdgrxjt'),
              currentAccountPicture: CircleAvatar(child:Icon(Icons.person)),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  image: DecorationImage(
                      image: NetworkImage("https://cms.prod.nypr.digital/images/36440/fill-661x496/"),
                      fit:BoxFit.cover)
              ),
              accountEmail:Text('rdgrxjt') ),
          ListTile(
            title:Text('الصفحه الرئيسيه',
              style: TextStyle(color: Colors.black,fontSize:18,fontStyle: FontStyle.normal ),) ,
            onLongPress: (){print('gcyhc');},
            onTap: ()
            { Navigator.of(context).pushNamed('Categories');},
            leading: Icon(Icons.home),

          ) ,
          ListTile(
            title:Text('الاقسام',
  style: TextStyle(color: Colors.black,fontSize:18,fontStyle: FontStyle.normal
  ),
            ) ,
            onTap: ()
            { Navigator.of(context).pushNamed('categories');},
            leading: Icon(Icons.category,color: Colors.blue,size: 25,),


          )
          ,
          ListTile(
            title:Text('حول التطبيق',
              style: TextStyle(color: Colors.black,fontSize:18,fontStyle: FontStyle.normal ),) ,
            onTap: ()
            { Navigator.of(context).pushNamed('Categories');},
            leading: Icon(Icons.category,color: Colors.blue,size: 25,),


          ),
          ListTile(
            title:Text('الاعدادات',
              style: TextStyle(color: Colors.black,fontSize:18,fontStyle: FontStyle.normal ),) ,
            onLongPress: (){print('gcyhc');},
            leading: Icon(Icons.category,color: Colors.blue,size: 25,),
            onTap: ()
            { Navigator.of(context).pushNamed('Categories');},

          ),Divider(color:Colors.blue,height: 10,thickness: 3,),
          ListTile(
            title:Text('تسجيل خروج',
              style: TextStyle(color: Colors.black,fontSize:18,fontStyle: FontStyle.normal ),) ,
            onLongPress: (){print('gcyhc');},
            leading: Icon(Icons.category,color: Colors.blue,size: 25,),
            onTap: ()
            { Navigator.of(context).pushNamed('categories');},

          )
        ],
      ),
    );
  }
}