import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_app/screens/login.dart';
import 'package:foodie_app/utils/hex_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.orange,
        statusBarBrightness: Brightness.dark
    ));
    return MaterialApp(
      title: "Foodie",
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.white,
        hintColor: Colors.white
      ),

      home: LoginScreen(),
    );
  }
}

