import 'package:flutter/material.dart';

class TimeTap extends StatelessWidget {
  const TimeTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Background (4).png"),
          fit: BoxFit.cover,         
        ),
      ),
    );
  }
}
