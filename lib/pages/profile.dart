import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
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

            //settingspage list tile
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingspage');
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
