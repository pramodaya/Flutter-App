import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/custom_app_bar.dart';

import '../common/custom_side_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Home",
      ),
      drawer: const SideMenuDrawer(), // Add the SideMenuDrawer
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the Home Screen!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Perform any action you want when the "Logout" button is pressed
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
