import 'package:flutter/material.dart';

import '../service/navigation_service.dart';

class SideMenuDrawer extends StatelessWidget {
  const SideMenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Column(
                    children: [
                      ClipOval(
                        child: Container(
                          width: 80, // Adjust the width as needed
                          height: 80, // Adjust the height as needed
                          color: Colors.white,
                          child: Image.network(
                            'https://img.favpng.com/19/16/1/computer-icons-png-favpng-t9NV5RQ9SB5GzU4r1kPEMaM3W.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'User Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    // Add any functionality you want when the "Home" link is tapped
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Profile'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    // Add any functionality you want when the "Profile" link is tapped
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () async {
                    await NavigationService.navigateToLogin(context);
                    // Add any functionality you want when the "Logout" link is tapped
                  },
                ),
              ],
            ),
          ),
          const Divider(), // Optional: Add a divider for visual separation
          ListTile(
            title: const Text('Version 1.02.2'),
            onTap: () {
              // Add any functionality you want when the version number is tapped
            },
          ),
        ],
      ),
    );
  }
}
