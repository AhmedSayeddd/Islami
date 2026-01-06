import 'package:flutter/material.dart';

class HadithTap extends StatelessWidget {
  const HadithTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bk2.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
