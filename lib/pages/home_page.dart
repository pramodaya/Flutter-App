import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/HomeScreen.dart';
import 'package:flutter_application_1/common/bottom_navigation.dart';
import 'package:flutter_application_1/common/custom_app_bar.dart';
import 'package:flutter_application_1/common/custom_side_menu.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Home",
      ),
      drawer: const SideMenuDrawer(), // Add the SideMenuDrawer
      body: HomeScreen(),
      bottomNavigationBar: const BottomNavigation(), // Use the BottomNavigation widget
    );
  }
}
