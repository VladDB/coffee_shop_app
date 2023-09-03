import 'package:coffee_shop_app/components/coffee_tile.dart';
import 'package:coffee_shop_app/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/coffee.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  void payNow() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, index) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    //heading
                    const Text(
                      'Yor Cart',
                      style: TextStyle(fontSize: 20),
                    ),

                    const SizedBox(height: 25),

                    //list of cart items
                    Expanded(
                      child: ListView.builder(
                          itemCount: value.userCart.length,
                          itemBuilder: (context, index) {
                            Coffee eachCoffee = value.userCart[index];
                            return CoffeeTile(
                                coffee: eachCoffee,
                                onPressed: () => removeFromCart(eachCoffee),
                                icon: const Icon(Icons.delete));
                          }),
                    ),

                    GestureDetector(
                      onTap: payNow,
                      child: Container(
                        padding: const EdgeInsets.all(25),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(12)),
                        child: const Center(
                          child: Text(
                            'Pay now',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
