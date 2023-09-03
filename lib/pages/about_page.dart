import 'package:coffee_shop_app/const.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: const Center(
        child: Text(
          'This is a simple app. You can watch code here https://github.com/VladDB/coffee_shop_app',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
