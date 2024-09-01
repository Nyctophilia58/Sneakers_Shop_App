import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/shoe.dart';

class ShoeTile extends StatefulWidget{
  Shoe shoe;
  void Function() onTap;

  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  State<ShoeTile> createState() => _ShoeTileState();
}

class _ShoeTileState extends State<ShoeTile>{
  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 250,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              widget.shoe.imagePath,
              height: 300,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              widget.shoe.description,
              style: TextStyle(
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.left,

            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.shoe.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      widget.shoe.price,
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}