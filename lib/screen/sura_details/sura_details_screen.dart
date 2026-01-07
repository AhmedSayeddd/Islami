import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/app_colors.dart';
import 'package:islami/core/app_style.dart';
import 'package:islami/models/suar_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  SuraDetailsScreen({super.key});
  static const String routeName = "SuraDetailsScreen";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var modle = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadSuraFile(modle.index);
    }
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        title: Text(modle.nameEn, style: AppStyle.bodyStyle),
        iconTheme: IconThemeData(color: AppColors.primary),
        centerTitle: true,
        backgroundColor: AppColors.black,
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
                  padding: const EdgeInsets.only(top: 17, left: 70, right: 72),
                  child: Text(modle.nameAr, style: AppStyle.titleStyle),
                ),
                SizedBox(height: 42),
                Expanded(
                  child: ListView.builder(
                    itemCount: verses.length,
                    itemBuilder: (context, index) => Center(
                      child: Text(
                        verses[index],
                        style: AppStyle.bodyStyle,
                        textAlign: TextAlign.center,
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

  Future<void> loadSuraFile(int index) async {
    String suraFile = await rootBundle.loadString("assets/files/$index.txt");
    List<String> suraLines = suraFile.split("\n");
    verses = suraLines;
    setState(() {});
    print(verses);
  }
}
