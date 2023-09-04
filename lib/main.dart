import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/login2.dart';
import 'package:flutter_application_1/pages/loginpage.dart';
import 'package:flutter_application_1/pages/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      routes: {
        "/":(context) => Homepage(),
        "/login":(context) => LogIn(),
        "/login2":(context)=> LogUp(),
        "/singup":(context)=> SignUp()
      },
    );
  }
}

