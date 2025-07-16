import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ButtomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;

  const ButtomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        color: Colors.black,
        activeColor: Colors.grey.shade600,
        tabActiveBorder: Border.all(color: Colors.grey.shade100),
        tabBackgroundColor: Colors.grey.shade400,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 14,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(icon: Icons.home, text: "Home"),
          GButton(icon: Icons.shopping_bag, text: "Cart"),
        ],
      ),
    );
  }
}
