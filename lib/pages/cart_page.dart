import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/shoe.dart';
import '../components/cart_item.dart';

class CartPage extends StatefulWidget{
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage>{
  @override
  Widget build(BuildContext context){
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const Text(
                "My cart",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length, itemBuilder: (context, index){
                Shoe individualShoe = value.getUserCart()[index];
                return CartItem(shoe: individualShoe);
              }),
            ),
          ],
        ),
      ),
    );
  }
}