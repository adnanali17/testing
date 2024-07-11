import 'package:flutter/material.dart';
import 'package:food_app_ui/constants/app_colors.dart';
import 'package:food_app_ui/screen/place_details/view/location_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  TextEditingController searchController = TextEditingController();
  bool isPublic = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
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
                    width: MediaQuery.sizeOf(context).width / 2,
                    height: 50,
                    child: Text(
                      'Feed',
                      style: GoogleFonts.inter(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    width: MediaQuery.sizeOf(context).width / 3,
                    height: 50,
                    child: Text(
                      'Filter',
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          color: AppColors.baseColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: AppColors.textFieldColor,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.grey.shade50)),
                child: TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    hintText: 'Search',
                    hintStyle: GoogleFonts.inter(
                        fontSize: 16,
                        color: AppColors.textColorDate,
                        fontWeight: FontWeight.w600),
                  ),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            minVerticalPadding: 12,
                            title: Text(
                              'Location Name',
                              style: GoogleFonts.inter(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text(
                              'Description',
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            dense: false,
                            enabled: true,
                            trailing: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text(
                                    '8m ago',
                                    style: GoogleFonts.inter(
                                        fontSize: 14,
                                        color: AppColors.textColorDate,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      isSelected: true,
                                      selectedIcon: Icon(
                                        Icons.favorite,
                                        color: AppColors.baseColor,
                                      ),
                                      icon: const Icon(
                                        Icons.favorite_border_outlined,
                                        size: 18,
                                      ))
                                ],
                              ),
                            ),
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Divider(
                            color: AppColors.dividerColor,
                            indent: 75,
                            endIndent: 20,
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      );
                    }))
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 73,
        width: 73,
        child: FloatingActionButton(
            onPressed: () {
              Get.to(LocationScreen());
            },
            backgroundColor: AppColors.baseColor,
            // ignore: sort_child_properties_last, prefer_const_constructors
            child: Icon(
              Icons.add,
              size: 40,
              color: Colors.white,
            ),
            shape: const CircleBorder()),
      ),
    );
  }
}
