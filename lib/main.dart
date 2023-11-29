import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/signup_page.dart';
import 'package:flutter_application_1/theme/theme_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.lightTheme,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const SafeAreaWrapper(child: LoginPage()),
        '/home': (context) => SafeAreaWrapper(child: HomePage()),
        '/signup': (context) => const SafeAreaWrapper(child: SignUpPage()),
      },
      home: const Scaffold(
        body: SafeAreaWrapper(child: LoginPage()),
      ),
    );
  }
}

class SafeAreaWrapper extends StatelessWidget {
  final Widget child;

  const SafeAreaWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: child,
    );
  }
}
