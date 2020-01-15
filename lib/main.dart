import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'pages/register.dart';
import 'pages/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Register(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => Register(),
        '/dashboard': (context) => Dashboard(),
      }
    );
  }
} 