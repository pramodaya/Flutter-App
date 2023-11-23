import 'package:flutter/material.dart';

import '../service/navigation_service.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool hasDrawer; // Add a flag to indicate whether to show the drawer icon

  const CustomAppBar({super.key, required this.title, this.hasDrawer = false}); // Update constructor

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.blue,
      elevation: 0,
      actions: <Widget>[
        if (hasDrawer)
          IconButton(
            icon: Icon(Icons.menu), // Hamburger icon
            onPressed: () {
              // Open the drawer
              Scaffold.of(context).openDrawer();
            },
          ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}


