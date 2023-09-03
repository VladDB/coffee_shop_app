import 'package:coffee_shop_app/pages/about_page.dart';
import 'package:coffee_shop_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Home Page',
            colorLineSelected: Colors.brown,
            baseStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            selectedStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white)),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'About',
            colorLineSelected: Colors.brown,
            baseStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            selectedStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white)),
        const AboutPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      backgroundColorMenu: Colors.brown.shade200,
      initPositionSelected: 0,
      withAutoTittleName: false,
      slidePercent: 50,
      contentCornerRadius: 30,
    );
  }
}
