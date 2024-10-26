import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        titleTextStyle: const TextStyle(fontSize: 20),
        centerTitle: true,
        backgroundColor: Colors.blue[100],
      ),
      // profile picture and textfield
      body: const Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.person,
                  size: 200,
                  color: Colors.blueGrey,
                ),
              ],
            ),
            const SizedBox(height: 50), // Spacing between icon and TextField
            // Name TextField
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
             const SizedBox(height: 20),
            TextField(
              onSubmitted: null,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Message to the world',
              ),
            ),
          ],
        ),
      ),
      // Drawer for navigation
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
           const DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),
            ),

            // Home list tile
            ListTile(
              leading: const Icon(Icons.home_filled),
              title: const Text("H O M E"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            // Settings list tile
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("S E T T I N G S"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
            // Title page list tile
            ListTile(
              leading: const Icon(Icons.backspace_outlined),
              title: const Text("T I T L E P A G E"),
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
