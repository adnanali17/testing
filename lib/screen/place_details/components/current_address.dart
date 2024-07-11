import 'package:flutter/material.dart';
import 'package:food_app_ui/constants/app_colors.dart';
import 'package:food_app_ui/screen/google_map/view/map_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrerentAddress extends StatelessWidget {
  const CurrerentAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      width: 260,
      decoration: BoxDecoration(
          color: AppColors.textFieldColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.textColorDate)),
      child: TextFormField(
        cursorHeight: 20,
        cursorColor: AppColors.baseColor,
        style: GoogleFonts.inter(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
        clipBehavior: Clip.antiAlias,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: 'Current Address',
          labelStyle: GoogleFonts.inter(
              fontSize: 16,
              color: AppColors.textColorDate,
              fontWeight: FontWeight.w600),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          suffixIcon: IconButton(
            onPressed: () {
              Get.to(MapScreen());
            },
            icon: Icon(Icons.location_on_outlined),
            color: AppColors.textColorDate,
          ),
        ),
      ),
    );
  }
}
