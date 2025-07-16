import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/compund/cartItem.dart';
import 'package:shop/model/card_page.dart';
import 'package:shop/model/shoe.dart';

class cartPage extends StatelessWidget {
  const cartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.only(top: 65, left: 25, right: 25),
        child: Column(
          children: [
            Text(
              "My Cart",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
            ),

            const SizedBox(height: 30),

            Expanded(
              child: ListView.builder(
                itemCount: value.showCart().length,
                itemBuilder: (BuildContext context, int index) {
                  Shoe indivitalShoe = value.showCart()[index];

                  return CartItem(shoe: indivitalShoe);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
