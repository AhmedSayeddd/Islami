import 'package:flutter/material.dart';
import 'package:islami/core/app_style.dart';

class SebhaTap extends StatefulWidget {
  const SebhaTap({super.key});

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  List<String> tasbeh = ["سبحان الله", "الحمد لله", "الله أكبر"];
  int index = 0;
  int count = 0;
  double angle = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Background (2).png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text(
                "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
                style: AppStyle.titleStyle.copyWith(
                  color: Colors.white,
                  fontSize: 36,
                ),
              ),
              SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Handel_sebha_tab();
                    angle += 10;
                  });
                },
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/Group37.png",
                        height: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(45.0),
                      child: Transform.rotate(
                        angle: angle,
                        child: Image.asset("assets/images/SebhaBody 1.png"),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              List<String>.from(tasbeh)[index],
                              style: AppStyle.titleStyle.copyWith(
                                color: Colors.white,
                                fontSize: 36,
                              ),
                            ),
                            Text(
                              "$count",
                              style: AppStyle.titleStyle.copyWith(
                                color: Colors.white,
                                fontSize: 36,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void Handel_sebha_tab() {
    count++;
    if (count == 33) {
      count = 0;
      index = (index + 1) % tasbeh.length;
    }
  }
}
