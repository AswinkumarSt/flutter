import 'dart:io';

import 'package:flutter/material.dart';
import 'package:newday/pages/first_page.dart';
import 'package:newday/pages/home_page.dart';
import 'package:newday/pages/profile.dart';
import 'package:newday/pages/settings_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage':(context) =>const FirstPage(),
        '/homepage' :(context) => const HomePage(),
        '/settingspage' :(context) => const SettingsPage(),
        '/profilepage' :(context) => const Profile(),
      },
    );
  }
}
