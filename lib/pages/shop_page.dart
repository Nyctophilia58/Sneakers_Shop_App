import 'package:flutter/material.dart';
import 'package:ecommerce_app/components/shoe_tile.dart';
import '../models/shoe.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';


class ShopPage extends StatefulWidget{
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage>{
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addToCart(shoe);

    showDialog(context: context, builder: (context) => AlertDialog(
      title: const Text("Success"),
      content: Text("${shoe.name} has been added to your cart. Check it now!!"),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("OK"),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context){
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
          children: [
            Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.search,
                      ),
                    ]
                )
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "everyone flies... some fly longer than others",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Popular 🔥",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  Shoe shoe = value.getShoeList()[index];

                  return ShoeTile(
                    shoe: shoe,
                    onTap: () => addShoeToCart(shoe),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Divider(
                color: Colors.grey[300],
                thickness: 1,
              ),
            ),
          ],
        ),
    );
  }
}