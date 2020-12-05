import 'package:flutter/material.dart';
// from project
import 'screens/login_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input Fields App',
      home: LoginScreen(),
    );
  }
}

