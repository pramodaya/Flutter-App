import 'package:flutter/material.dart';

class NavigationService {
  static Future navigateToLogin(BuildContext context) async {
    return Navigator.pushNamed(context,
        '/login'); // '/login' should be the route for your login screen
  }

  static Future navigateToHome(BuildContext context) async {
    return Navigator.pushNamed(
        context, '/home'); // '/home' should be the route for your home screen
  }

  static Future navigateToSignUp(BuildContext context) async {
    return Navigator.pushNamed(
        context, '/signup'); // '/home' should be the route for your home screen
  }
}
