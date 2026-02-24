import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/app_colors.dart';
import 'package:islami/core/app_style.dart';
import 'package:islami/models/suar_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "SuraDetailsScreen";
  SuraDetailsScreen({super.key});
  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadSuraFile(model.index);
    }
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        iconTheme: IconThemeData(color: AppColors.primary),
        title: Text(model.nameEn, style: AppStyle.bodyStyle),
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
                  child: Text(model.nameAr, style: AppStyle.bodyStyle),
                ),
                SizedBox(height: 40),
                // Removed duplicate/misplaced Padding and Text for modle.nameAr
                SizedBox(height: 42),
                Expanded(
                  child: ListView.builder(
                    itemCount: verses.length,
                    itemBuilder: (context, index) => Center(
                      child: Text(
                        verses[index],
                        textAlign: TextAlign.center,
                        style: AppStyle.bodyStyle,
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
    setState(() {});
    // ignore: avoid_print
    print(verses);
  }
}
