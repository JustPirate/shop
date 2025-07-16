import 'package:flutter/material.dart';
import 'package:shop/compund/buttom_nav_bar.dart';
import 'package:shop/pages/shop.dart';
import 'package:shop/pages/cart.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> pages = [const shop(), const cartPage()];

  navigatorbarchange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtomNavBar(
        onTabChange: (index) => navigatorbarchange(index),
      ),
      backgroundColor: Colors.grey[200],
      body: pages[_selectedIndex],
    );
  }
}
