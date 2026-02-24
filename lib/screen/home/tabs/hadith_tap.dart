import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/app_style.dart';
import 'package:islami/models/hadeth_model.dart';
import 'package:islami/screen/hadeth_detalis/hadeth_detali.dart';

class HadethTab extends StatefulWidget {
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> allAhadithData = [];

  @override
  void initState() {
    super.initState();
    loadHadithFile();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/bk2.png"),
        ),
      ),
      child: CarouselSlider(
        options: CarouselOptions(height: double.infinity),
        items: allAhadithData.map((model) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                padding: EdgeInsets.only(top: 170, left: 10),

                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image.asset("assets/images/Hadith Card.png"),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          Text(
                            model.title,
                            style: AppStyle.bodyStyle.copyWith(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: model.content.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      HadithDetailsScreen.routeName,
                                      arguments: model,
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      model.content[index],
                                      maxLines: 8,
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      style: AppStyle.bodyStyle.copyWith(
                                        fontSize: 24,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  loadHadithFile() async {
    String hadethFile = await rootBundle.loadString("assets/files/ahadeth.txt");

    List<String> allAhadeth = hadethFile.split("#"); // len >> 50

    for (int i = 0; i < allAhadeth.length; i++) {
      String hadethOne = allAhadeth[i];
      List<String> hadethLines = hadethOne.trim().split("\n");
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      List<String> hadethContent = hadethLines;

      print(title);
      allAhadithData.add(HadethModel(title, hadethContent));
    }

    setState(() {});
  }
}
