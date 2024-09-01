import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/shoe.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';

class CartItem extends StatefulWidget{
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem>{
  void removeFromCart(){
    Provider.of<Cart>(context, listen: false).removeFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Image.asset(
          widget.shoe.imagePath,
          width: 50,
        ),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.description),
        trailing: IconButton(onPressed: removeFromCart, icon: const Icon(Icons.delete)),
      ),
    );
  }
}