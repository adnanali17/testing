import 'package:flutter/material.dart';
import 'package:food_app_ui/constants/app_colors.dart';
import 'package:food_app_ui/screen/auth/view/sign_up_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _goHome() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Get.to(SignUpScreen());
    });
  }

  @override
  void initState() {
    _goHome();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/splash_icon.png',
              color: AppColors.baseColor,
              height: 142,
              width: 142,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Pinify',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w800,
                  color: AppColors.baseColor,
                  fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
