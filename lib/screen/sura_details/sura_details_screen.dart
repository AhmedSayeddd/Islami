import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/app_colors.dart';
import 'package:islami/core/app_style.dart';
import 'package:islami/models/suar_model.dart';

class SuraDetailsScreen extends StatefulWidget {
<<<<<<< HEAD
  static const String routeName = "SuraDetailsScreen";

  SuraDetailsScreen({super.key});
=======
  // ignore: prefer_const_constructors_in_immutables
  SuraDetailsScreen({super.key});
  static const String routeName = "SuraDetailsScreen";
>>>>>>> 962221e496c78c8e344426928bdf3f7368b92c67

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadSuraFile(model.index);
=======
    var modle = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadSuraFile(modle.index);
>>>>>>> 962221e496c78c8e344426928bdf3f7368b92c67
    }
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
<<<<<<< HEAD
        backgroundColor: AppColors.black,
        iconTheme: IconThemeData(color: AppColors.primary),
        title: Text(model.nameEn, style: AppStyle.bodyStyle),
        centerTitle: true,
      ),

=======
        title: Text(modle.nameEn, style: AppStyle.bodyStyle),
        iconTheme: IconThemeData(color: AppColors.primary),
        centerTitle: true,
        backgroundColor: AppColors.black,
      ),
>>>>>>> 962221e496c78c8e344426928bdf3f7368b92c67
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset("assets/images/sura_bg.png", fit: BoxFit.cover),
            Column(
              children: [
                Padding(
<<<<<<< HEAD
                  padding: const EdgeInsets.only(top: 35),
                  child: Text(model.nameAr, style: AppStyle.bodyStyle),
                ),
                SizedBox(height: 40),
=======
                  padding: const EdgeInsets.only(top: 17, left: 70, right: 72),
                  child: Text(modle.nameAr, style: AppStyle.titleStyle),
                ),
                SizedBox(height: 42),
>>>>>>> 962221e496c78c8e344426928bdf3f7368b92c67
                Expanded(
                  child: ListView.builder(
                    itemCount: verses.length,
                    itemBuilder: (context, index) => Center(
                      child: Text(
                        verses[index],
<<<<<<< HEAD
                        textAlign: TextAlign.center,
                        style: AppStyle.bodyStyle,
=======
                        style: AppStyle.bodyStyle,
                        textAlign: TextAlign.center,
>>>>>>> 962221e496c78c8e344426928bdf3f7368b92c67
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
<<<<<<< HEAD

    setState(() {});
=======
    setState(() {});
    // ignore: avoid_print
    print(verses);
>>>>>>> 962221e496c78c8e344426928bdf3f7368b92c67
  }
}
