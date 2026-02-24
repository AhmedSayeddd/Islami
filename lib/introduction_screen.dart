import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/core/app_colors.dart';
import 'package:islami/core/app_style.dart';
import 'package:islami/core/cache_helper.dart';
import 'package:islami/screen/home/home_screen.dart';

// ignore: must_be_immutable
class IntroductionScreens extends StatelessWidget {
  IntroductionScreens({super.key});
  static const String routeName = "IntroductionScreens";

  var listPagesViewModel = [
    PageViewModel(
      titleWidget: Text("Welcome To Islam", style: AppStyle.titleStyle),
      bodyWidget: Text(""),
      image: Center(child: Image.asset("assets/images/Group.png")),
    ),
    PageViewModel(
      titleWidget: Text("Welcome To Islam", style: AppStyle.titleStyle),
      bodyWidget: Text(
        "We Are Very Excited To Have You In Our Community",
        style: AppStyle.bodyStyle,
        textAlign: TextAlign.center,
      ),
      image: Center(child: Image.asset("assets/images/kabba.png")),
    ),
    PageViewModel(
      titleWidget: Text("Reading the Quran", style: AppStyle.titleStyle),
      bodyWidget: Text(
        "Read, and your Lord is the Most Generous",
        style: AppStyle.bodyStyle,
        textAlign: TextAlign.center,
      ),
      image: Center(child: Image.asset("assets/images/welcome.png")),
    ),
    PageViewModel(
      titleWidget: Text("Bearish", style: AppStyle.titleStyle),
      bodyWidget: Text(
        "Praise the name of your Lord, the Most High",
        style: AppStyle.bodyStyle,
        textAlign: TextAlign.center,
      ),
      image: Center(child: Image.asset("assets/images/bearish.png")),
    ),
    PageViewModel(
      titleWidget: Text(
        "Holy Quran Radio",
        style: AppStyle.titleStyle,
        textAlign: TextAlign.center,
      ),
      bodyWidget: Text(
        "You can listen to the Holy Quran Radio through the application for free and easily",
        style: AppStyle.bodyStyle,
        textAlign: TextAlign.center,
      ),
      image: Center(child: Image.asset("assets/images/radio.png")),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      dotsDecorator: DotsDecorator(
        color: AppColors.secondery,
        activeColor: AppColors.primary,
        size: Size(7, 7),
        activeSize: Size(18, 7),
        activeShape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(27),
        ),
      ),

      globalBackgroundColor: Colors.black,
      pages: listPagesViewModel,
      showNextButton: true,
      next: Text("Next", style: AppStyle.btn),
      bodyPadding: EdgeInsets.only(top: 228),
      globalHeader: Image.asset("assets/images/logo.png"),
      showSkipButton: true,
      skip: const Text("Skip", style: AppStyle.btn),
      showBackButton: true,
      back: const Text("Back", style: AppStyle.btn),
      done: const Text("Done", style: AppStyle.btn),
      onDone: () async {
        await CacheHelper().saveBool('introduction', true);
        // ignore: use_build_context_synchronously
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
      onSkip: () async {
        await CacheHelper().saveBool('introduction', true);
        // ignore: use_build_context_synchronously
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
    );
  }
}
