import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app_ui/screen/main_screen.dart';
import 'package:food_app_ui/widgets/custom_button.dart';
import 'package:food_app_ui/widgets/custom_field.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Login',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomField(name: 'Email'),
            const SizedBox(
              height: 15,
            ),
            const CustomField(name: 'Password'),
            const Spacer(),
            GestureDetector(
                onTap: () {
                  Get.to(const MainScreen());
                },
                child: const CustomButton(text: 'Login')),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      )),
    );
  }
}
