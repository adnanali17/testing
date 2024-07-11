import 'package:flutter/material.dart';
import 'package:food_app_ui/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomField extends StatelessWidget {
  final String name;
  const CustomField({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: 343,
      decoration: BoxDecoration(
          color: AppColors.textFieldColor,
          borderRadius: BorderRadius.circular(8)),
      child: TextFormField(
          cursorHeight: 20,
          cursorColor: AppColors.baseColor,
          style: GoogleFonts.inter(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            labelText: name,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelStyle: GoogleFonts.inter(
                fontSize: 16,
                color: AppColors.textColorDate,
                fontWeight: FontWeight.w600),
            border: const OutlineInputBorder(borderSide: BorderSide.none),
          )),
    );
  }
}
