import 'package:flutter/material.dart';
import 'package:shop/model/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeshop = [
    Shoe(price: "234", imagePath: 'lib/nike/shoes.jpg', name: "joe", description: "fdslfsadfsa"),
    Shoe(price: "324", imagePath: 'lib/nike/shoes1.jpg', name: "wafesa", description: "fdvdsvfdf"),
    Shoe(price: "23543", imagePath: 'lib/nike/shoes 2.jpg', name: "pick", description: "dasfsafas"),
    Shoe(price: "4332", imagePath: 'lib/nike/shoes 3.jpg', name: "fdghfd", description: "dsafasffa"),
  ];

  List<Shoe> userCart = [];

  List<Shoe> showCart() => userCart;

  void addCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
