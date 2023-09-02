import 'package:coffee_shop_app/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/coffee.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    //heading message
                    const Text(
                      'Which coffee do you want?',
                      style: TextStyle(fontSize: 20),
                    ),

                    const SizedBox(height: 25),

                    // list of coffee
                    Expanded(
                      child: ListView.builder(
                          itemCount: value.coffeeShop.length,
                          itemBuilder: (context, index) {
                            Coffee eachCoffee = value.coffeeShop[index];
                            return ListTile(
                              title: Text(eachCoffee.name),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ));
  }
}