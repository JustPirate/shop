import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/model/card_page.dart';
import 'package:shop/model/shoe.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;

  const CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeFromCart() {
    Provider.of<Cart>(context, listen: false).removeCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        widget.shoe.imagePath,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      title: Text(widget.shoe.name),
      subtitle: Text("\$${widget.shoe.price}"),
      trailing: IconButton(onPressed: removeFromCart, icon: Icon(Icons.delete)),
    );
  }
}
