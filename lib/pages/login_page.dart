import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/common_text.dart';
import 'package:flutter_application_1/common/common_validation.dart';
import 'package:flutter_application_1/common/common_button.dart';  // Import the CommonButton
import 'package:flutter_application_1/common/custom_app_bar.dart';
import 'package:flutter_application_1/service/navigation_service.dart';
import 'package:flutter_application_1/theme/theme_manager.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Login"),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          decoration: ThemeManager.gradientBackground,
          child: ListView(
            children: [Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  const SizedBox(height: 32.0),
                  CommonButton(  // Use the CommonButton here
                    onPressed: () async {
                      // Validate all text fields
                      // You can do further actions if all validations pass
                      // For example, navigate to the home screen if the login is successful
                      const isLoginSuccessful = true;
                      if (isLoginSuccessful) {
                        await NavigationService.navigateToHome(context);
                      }
                    },
                    text: 'Submit',
                  ),
                  const SizedBox(height: 16.0),
                  TextButton(
                    onPressed: () async {
                      // Navigate to the Sign Up page
                      await NavigationService.navigateToSignUp(context);
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),],
          ),
        ),
      )



    );
  }
}
