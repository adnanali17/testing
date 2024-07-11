import 'package:flutter/material.dart';
import 'package:food_app_ui/constants/app_colors.dart';
import 'package:food_app_ui/screen/auth/view/login_screen.dart';
import 'package:food_app_ui/widgets/custom_button.dart';
import 'package:food_app_ui/widgets/custom_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      width: MediaQuery.sizeOf(context).width / 1.6,
                      height: 50,
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      width: MediaQuery.sizeOf(context).width / 3.3,
                      height: 50,
                      child: const Text(
                        'Login',
                        style:
                            TextStyle(fontSize: 16, color: Colors.pinkAccent),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomField(
                name: 'Name',
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomField(name: 'Email'),
              const SizedBox(
                height: 15,
              ),
              const CustomField(
                name: 'Password',
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Get.to(LoginScreen());
                },
                child: const CustomButton(
                  text: 'Sign Up',
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
