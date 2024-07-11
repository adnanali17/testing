import 'package:flutter/material.dart';
import 'package:food_app_ui/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterWidget extends StatelessWidget {
  final double width;
  final String text;
  const FilterWidget({
    required this.width,
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: width,
      decoration: BoxDecoration(
          color: AppColors.baseColor, borderRadius: BorderRadius.circular(3)),
      child: Center(
          child: Text(
        '$text',
        style: GoogleFonts.inter(
            fontSize: 10, color: Colors.white, fontWeight: FontWeight.w300),
      )),
    );
  }
}
