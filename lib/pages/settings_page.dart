import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Page'),
        titleTextStyle: TextStyle(fontSize: 20),
        centerTitle: true,
        backgroundColor: Colors.blue[100],
        leading: null,
      ),
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
              onTap: () {
                print("hey");
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("P R O F I L E"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profilepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.backspace_outlined),
              title: Text("T I T L E P A G E"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/firstpage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
