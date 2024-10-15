import 'dart:io';

import 'package:flutter/material.dart';
import 'package:newday/pages/first_page.dart';
import 'package:newday/pages/home_page.dart';
import 'package:newday/pages/settings_page.dart';


void main() {
  runApp(const MyApp());
}
void userTap(){
  print("the user tapped!");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/homepage' :(context) => HomePage(),
        '/settingspage' :(context) => SettingsPage(),
      },
    );
  }
}
