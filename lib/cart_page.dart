import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shose_app/cart.dart';
import 'package:shose_app/cart_item.dart';
import 'package:shose_app/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Text(
            'My Cart',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
            Shoe individualShoe = value.getUserCart()[index];
            return CartItem(shoe: individualShoe);
          }))
        ]),
      ),
    );
  }
}
