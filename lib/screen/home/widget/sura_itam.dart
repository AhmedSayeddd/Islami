import 'package:flutter/material.dart';
import 'package:islami/models/suar_model.dart';

// ignore: must_be_immutable
class SuraItam extends StatelessWidget {
  // ignore: non_constant_identifier_names
  SuraItam({super.key, required this.suraModel});
  SuraModel suraModel;
  // ignore: non_constant_identifier_names
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/images/sura.png", width: 52, height: 52),
            Text(
              suraModel.index.toString(),
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: "Janna",
              ),
            ),
          ],
        ),
        SizedBox(width: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              suraModel.nameEn,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: "Janna",
              ),
            ),
            Text(
              suraModel.verses.toString() + " verses",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontFamily: "Janna",
              ),
            ),
          ],
        ),
        Spacer(),
        Text(
          suraModel.nameAr,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "Janna",
          ),
        ),
      ],
    );
  }
}
