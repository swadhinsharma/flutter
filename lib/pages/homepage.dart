import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login2.dart';
import 'package:flutter_application_1/pages/loginpage.dart';
import 'package:flutter_application_1/pages/signup.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> LogIn()));
        }, child: Text("button")),
    drawer:
    Drawer(
      child: Column(children:[
      Padding(padding:EdgeInsets.all(20) ),
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Colors.black),
          image: DecorationImage(
           image: AssetImage("assets/images/newapp.png"),
           fit: BoxFit.cover
          ),
        ),
        ),
      ListTile(leading: Icon(Icons.home),
      title: Text('Home'),
      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> LogIn()));}
      ),

      ListTile(leading: Icon(Icons.abc),
      title: Text('Profile'),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
      },),
      
      ElevatedButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> LogUp()));
      }, child: Text('first button')),
      
      ]),
      
    ));
  }
}
