import 'package:flutter/material.dart';
import 'package:food_app_ui/constants/app_colors.dart';
import 'package:food_app_ui/screen/explore_screen.dart';
import 'package:food_app_ui/screen/favorite/view/favorite_screen.dart';
import 'package:food_app_ui/screen/feed/view/feed_screen.dart';
import 'package:food_app_ui/screen/settings/view/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final _screens = [
    const FeedScreen(),
    const ExplorScreen(),
    const FavoriteScreen(),
    const SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(backgroundColor: Colors.white),
        child: NavigationBar(
          height: 63,
          destinations: [
            NavigationDestination(
                icon: const Icon(
                  Icons.home_outlined,
                  size: 32,
                  color: Colors.black,
                ),
                selectedIcon: Icon(
                  Icons.home_outlined,
                  size: 32,
                  color: AppColors.baseColor,
                ),
                label: ''),
            NavigationDestination(
                icon: const Icon(
                  Icons.pin_drop_outlined,
                  size: 32,
                  color: Colors.black,
                ),
                selectedIcon: Icon(
                  Icons.pin_drop_outlined,
                  color: AppColors.baseColor,
                  size: 32,
                ),
                label: ''),
            NavigationDestination(
                icon: const Icon(Icons.favorite_border_outlined,
                    size: 32, color: Colors.black),
                selectedIcon: Icon(Icons.favorite_border_outlined,
                    size: 32, color: AppColors.baseColor),
                label: ''),
            NavigationDestination(
                icon: const Icon(Icons.settings_outlined,
                    size: 32, color: Colors.black),
                selectedIcon: Icon(
                  Icons.settings_outlined,
                  color: AppColors.baseColor,
                  size: 32,
                ),
                label: ''),
          ],
          selectedIndex: _currentIndex,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          indicatorColor: Colors.transparent,
          onDestinationSelected: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
