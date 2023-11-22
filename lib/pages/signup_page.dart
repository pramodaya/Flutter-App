import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/common_text.dart';
import 'package:flutter_application_1/common/common_validation.dart';
import 'package:flutter_application_1/common/custom_app_bar.dart';
import 'package:flutter_application_1/service/navigation_service.dart';
import 'package:flutter_application_1/theme/theme_manager.dart';

import '../common/common_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Sign Up"),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus(); // Hide keyboard when tapping outside of text fields
        },
        child: Container(
          decoration: ThemeManager.gradientBackground,
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              CommonTextField(
                controller: _emailController,
                labelText: 'Email',
                validator: Validation.isNotEmpty,
              ),
              const SizedBox(height: 16.0),
              CommonTextField(
                controller: _passwordController,
                labelText: 'Password',
                validator: Validation.isNotEmpty,
              ),
              const SizedBox(height: 16.0),
              CommonTextField(
                controller: _firstnameController,
                labelText: 'First Name',
                validator: Validation.isNotEmpty,
              ),
              const SizedBox(height: 16.0),
              CommonTextField(
                controller: _lastnameController,
                labelText: 'Last Name',
                validator: Validation.isNotEmpty,
              ),
              const SizedBox(height: 32.0),
              CommonButton(  // Use the CommonButton here
                onPressed: () async {
                  // Validate all text fields
                  // You can do further actions if all validations pass
                  // For example, navigate to the home screen if the login is successful
                  const isSignUpSuccessful = true;
                  if (isSignUpSuccessful) {
                    await NavigationService.navigateToHome(context);
                  }
                },
                text: 'Sign Up',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
