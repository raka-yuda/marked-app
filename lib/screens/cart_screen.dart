import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static const id = 'cart-screen';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        width: size.width,
        height: size.height,
        child: Center(
          child: Text('This is Cart Screen'),
        ),
      ),
    );
  }
}
