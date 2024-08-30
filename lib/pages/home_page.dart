import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget{
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF939185),
      appBar: AppBar(
        backgroundColor: Color(0xFF2F3645),
        title: const Text(
            'Home Page',
            style: TextStyle(
              color: Colors.white,
            ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Image.asset(
              'lib/images/nike.png',
              height: 250,
              width: 350,
            ),
          ),
          const Text(
            'Just Do It',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]
      ),
    );
  }
}