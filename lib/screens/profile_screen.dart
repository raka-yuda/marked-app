import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const id = 'profile-screen';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        width: size.width,
        height: size.height,
        child: Center(
          child: Text('This is Profile Screen'),
        ),
      ),
    );
  }
}
