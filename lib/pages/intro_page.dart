import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF2F3645),
      //   title: const Text(
      //       'Home Page',
      //       style: TextStyle(
      //         color: Colors.white,
      //       ),
      //   ),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/assets/images/nike.png',
                  height: 200,
                  width: 350,
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'Just Do It',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Brand new sneakers and custom kicks made with premium quality',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 50),

              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[850],
                      borderRadius: BorderRadius.circular(10)
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}