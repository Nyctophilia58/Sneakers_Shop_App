import 'package:flutter/material.dart';
import 'shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeList = [
    Shoe(
      name: "Nike Air Max SC",
      imagePath: "lib/assets/images/nike_air_max_sc.webp",
      price: "\$236",
      description: "Lightweight, versatile sneaker with Air Max cushioning and a clean design."
    ),
    Shoe(
      name: "Nike Air Max 90",
      imagePath: "lib/assets/images/nike_air_max_90.webp",
      price: "\$270",
      description: "Iconic sneaker with visible Air cushioning, known for comfort and classic style."
    ),
    Shoe(
      name: "Nike Court Vision",
      imagePath: "lib/assets/images/nike_court_vision.webp",
      price: "\$190",
      description: "Retro-inspired sneaker combining classic basketball style with modern comfort."
    ),
    Shoe(
      name: "Air Jordan 1",
      imagePath: "lib/assets/images/air_jordan.webp",
      price: "\$150",
      description: "Legendary high-top basketball shoe, famous for its style and heritage."
    ),
  ];


  List<Shoe> userCart = [];

  List<Shoe> getShoeList(){
    return shoeList;
  }

  List<Shoe> getUserCart(){
    return userCart;
  }

  void addToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}