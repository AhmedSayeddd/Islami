import 'package:flutter/material.dart';
import 'package:islami/core/app_colors.dart';
import 'package:islami/screen/home/tabs/hadith_tap.dart';
import 'package:islami/screen/home/tabs/quran_tab.dart';
import 'package:islami/screen/home/tabs/radio_tap.dart';
import 'package:islami/screen/home/tabs/sebha_tap.dart';
import 'package:islami/screen/home/tabs/time_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int select = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primary,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: AppColors.wihte,
        unselectedItemColor: AppColors.black,
        currentIndex: select,
        onTap: (value) {
          select = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: _getBottoNavBarItem("ic_quran", 0),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            icon: _getBottoNavBarItem("ic_hadeth", 1),
            label: "Hadith",
          ),
          BottomNavigationBarItem(
            icon: _getBottoNavBarItem("ic_sebha", 2),
            label: "Sebha",
          ),
          BottomNavigationBarItem(
            icon: _getBottoNavBarItem("ic_radio", 3),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: _getBottoNavBarItem("ic_time", 4),
            label: "Time",
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [tabs[select], Image.asset("assets/images/logo.png")],
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTap(),
    RadioTap(),
    TimeTap(),
  ];

  Widget _getBottoNavBarItem(String image, int index) {
    return select == index
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            decoration: BoxDecoration(
              color: Color.fromRGBO(32, 32, 32, 0.6),
              borderRadius: BorderRadius.circular(66),
            ),
            child: ImageIcon(AssetImage("assets/images/$image.png")),
          )
        : ImageIcon(AssetImage("assets/images/$image.png"));
  }
}
