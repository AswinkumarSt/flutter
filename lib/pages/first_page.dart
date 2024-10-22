// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:newday/pages/home_page.dart';
import 'package:newday/pages/profile.dart';
import 'package:newday/pages/settings_page.dart';
class FirstPage extends StatefulWidget {
   FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
   int selectedIndex = 0;

   void navigateBottombar(int index){
      setState(() {
        selectedIndex=index;
      });
   }

  final List _pages = [
    HomePage(),

    Profile(),

    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First page"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: _pages[selectedIndex],
        drawer: Drawer(
          backgroundColor: Colors.deepPurple[100],
          child: Column(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.favorite,
                  size: 48,
                ),
              ),

              //homepage list tile
              ListTile(
                leading: Icon(Icons.home_filled),
                title: Text("H O M E"),
                onTap:() {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/homepage');
                },
              ),

              //settingspage list tile
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("S E T T I N G S"),
                onTap:() {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/settingspage');
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("P R O F I L E"),
                onTap:() {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/profilepage');
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: navigateBottombar,
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',   
            ),

          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',   
            ),
          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',   
            ),
      ]),
    );
  }
}
