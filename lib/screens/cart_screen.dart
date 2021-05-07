import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/empty_cart',
              placeholderBuilder: (context) => CircularProgressIndicator(),
              height: 128.0,
            ),
            SizedBox(
              height: 72,
            ),
            TextButton(
              onPressed: () {},
              child: Text('Empty Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
