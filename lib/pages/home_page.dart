import 'package:coffee_shop_app/components/bottom_nav_bar.dart';
import 'package:coffee_shop_app/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigation bar
  var _selectedId = 0;
  void navigateBottomBar(var index) {
    setState(() {
      _selectedId = index;
    });
  }

  //pages
  // final List<Widget> pages = {
  //   // shop page
  //   ShopPage(),
  //   //cart page
  //   CartPage(),
  // };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
