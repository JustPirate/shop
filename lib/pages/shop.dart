import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/compund/shoe_tiles.dart';
import 'package:shop/model/card_page.dart';
import 'package:shop/model/shoe.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addCart(shoe);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Suuceessfully add  to cart"),
        content: Text("check your cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 55, left: 30, right: 30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Icon(Icons.search, size: 30),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "Fly without thinking ..........",
              style: TextStyle(fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Hot picks", style: TextStyle(fontSize: 30)),
                Text("Show all", style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: value.shoeshop.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Shoe shoe = value.shoeshop[index];
                return ShowTile(shoe: shoe, onTap: () => addShoeToCart(shoe));
              },
            ),
          ),
        ],
      ),
    );
  }
}
