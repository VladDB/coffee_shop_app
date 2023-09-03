import 'package:coffee_shop_app/hidden_drawer.dart';
import 'package:coffee_shop_app/models/coffee_shop.dart';
import 'package:coffee_shop_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CoffeeShop(),
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HiddenDrawer(),
          theme: ThemeData(primarySwatch: Colors.brown),
        ),
    );
  }
}
