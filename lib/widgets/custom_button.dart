import 'package:flutter/material.dart';
import 'package:food_app_ui/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          decoration: BoxDecoration(
              color: AppColors.baseColor,
              borderRadius: BorderRadius.circular(100)),
          height: 51,
          width: 311,
          child: Center(
              child: Text(
            '$text',
            style: GoogleFonts.inter(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
          ))),
    );
  }
}
