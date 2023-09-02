import 'package:flutter/cupertino.dart';

import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      name: 'Long Black',
      price: '4.10',
      imagePath: 'coffeeIcons/hot-coffee.png'
    ),
    Coffee(
        name: 'Latte',
        price: '3.15',
        imagePath: 'coffeeIcons/latte.png'
    ),
    Coffee(
        name: 'Espresso',
        price: '2.50',
        imagePath: 'coffeeIcons/expresso.png'
    ),
    Coffee(
        name: 'Iced coffee',
        price: '4.40',
        imagePath: 'coffeeIcons/iced-coffee.png'
    )
  ];

  List<Coffee> _userCart = [];

  List<Coffee> get coffeeShop => _shop;
  List<Coffee> get userCart => _userCart;

  void addItemToCart(Coffee cofee) {
    _userCart.add(cofee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}