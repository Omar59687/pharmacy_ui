import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pharmacy_ui/constants.dart';
import 'package:pharmacy_ui/screens/home_page_body.dart';
import 'package:pharmacy_ui/screens/menu_page.dart';
import 'package:pharmacy_ui/widgets/bottom_navigation.dart';
import 'package:pharmacy_ui/widgets/custom_bottom_navigation_bar.dart';
import 'package:pharmacy_ui/widgets/custom_circle_avatar.dart';
import 'package:pharmacy_ui/widgets/custom_home_page_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTabIndex = 0;

  final List<Widget> _pages = [
    // Home page content
    HomePageBody(),

    MenuPage(),
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: _pages[_selectedTabIndex],
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: _selectedTabIndex,
        onTabChange: (index) {
          setState(() {
            _selectedTabIndex = index;
          });
        },
      ),
    );
  }
}
