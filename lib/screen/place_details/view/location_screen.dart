import 'package:flutter/material.dart';
import 'package:food_app_ui/constants/app_colors.dart';
import 'package:food_app_ui/screen/place_details/components/current_address.dart';
import 'package:food_app_ui/screen/place_details/components/description_field.dart';
import 'package:food_app_ui/screen/place_details/components/name_field.dart';
import 'package:food_app_ui/widgets/custom_button.dart';
import 'package:food_app_ui/widgets/filter_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  bool isPublic = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Add New Location',
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    // Handle image selection
                  },
                  child: Center(
                    child: Container(
                      width: 196,
                      height: 193,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.imageBgColor,
                      ),
                      child: const Icon(Icons.image, size: 60),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width / 1.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isPublic = true;
                            });
                          },
                          child: Container(
                            height: 39,
                            width: 123,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: isPublic
                                    ? AppColors.baseColor
                                    : AppColors.imageBgColor),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                'Public',
                                style: GoogleFonts.inter(
                                    fontSize: 16,
                                    color:
                                        isPublic ? Colors.white : Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isPublic = false;
                            });
                          },
                          child: Container(
                            height: 39,
                            width: 123,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: isPublic
                                    ? AppColors.imageBgColor
                                    : AppColors.baseColor),
                            child: Center(
                              child: Text(
                                style: GoogleFonts.inter(
                                    fontSize: 16,
                                    color:
                                        isPublic ? Colors.black : Colors.white,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                                'Private',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Name_Field(),
                const SizedBox(height: 16),
                const Description_Field(),
                const SizedBox(height: 16),
                const CurrerentAddress(),
                const SizedBox(height: 40),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      FilterWidget(
                        width: 80,
                        text: 'Restaurant',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FilterWidget(
                        width: 80,
                        text: 'Restaurant',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FilterWidget(
                        width: 80,
                        text: 'Home',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FilterWidget(
                        width: 80,
                        text: 'Office',
                      ),
                    ],
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 120,
                ),
                const CustomButton(
                  text: 'Pin it',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
