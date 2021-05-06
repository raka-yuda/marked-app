import 'package:flutter/material.dart';

class ItemDetailScreen extends StatelessWidget {
  static const id = 'item-detail-screen';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        width: size.width,
        height: size.height,
        child: Center(
          child: Text('This is Item Detail Screen'),
        ),
      ),
    );
  }
}
