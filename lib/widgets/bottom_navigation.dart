import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigation extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabChange;

  const BottomNavigation({
    super.key,
    required this.selectedIndex,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return GNav(
      backgroundColor: Colors.white,
      color: const Color.fromARGB(255, 134, 134, 134),
      activeColor: Colors.white,
      iconSize: 24,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      duration: const Duration(milliseconds: 800),
      tabBackgroundColor: Colors.black,
      gap: 8,
      tabs: const [
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          icon: Icons.menu,
          text: 'Menu',
        ),
        GButton(
          icon: Icons.shopping_cart,
          text: 'Cart',
        ),
      ],
      selectedIndex: selectedIndex,
      onTabChange: (index) {
        onTabChange(index);
      },
    );
  }
}
