import 'package:flutter/material.dart';
import 'package:islami/core/app_colors.dart';
import 'package:islami/core/app_style.dart';
import 'package:islami/models/hadeth_model.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const String routeName = "HadithDetailsScreen";

  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        iconTheme: IconThemeData(color: AppColors.primary),
        // title: Text(model.title, style: AppStyles.bodyStyle),
        centerTitle: true,
      ),

      body: SizedBox(
        width: double.infinity,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset("assets/images/sura_bg.png", fit: BoxFit.cover),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Text(model.title, style: AppStyle.bodyStyle),
                ),
                SizedBox(height: 40),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: ListView.builder(
                      itemCount: model.content.length,
                      itemBuilder: (context, index) => Center(
                        child: Text(
                          model.content[index],
                          textAlign: TextAlign.center,
                          style: AppStyle.bodyStyle,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
