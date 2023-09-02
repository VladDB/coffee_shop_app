import 'package:coffee_shop_app/components/coffee_tile.dart';
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
  // add coffee to cart
  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);

    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text('Successfully added to cart'),
            ));
  }

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
                            return CoffeeTile(
                              coffee: eachCoffee,
                              onPressed: () => addToCart(eachCoffee),
                              icon: Icon(Icons.add),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ));
  }
}
