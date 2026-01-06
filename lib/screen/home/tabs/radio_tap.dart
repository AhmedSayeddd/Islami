import 'package:flutter/material.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Background (3).png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
