import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:islami/introduction_screen.dart';
import 'package:islami/screen/home/home_screen.dart';
void main() {
  runApp( MyApp());
=======
import 'package:islami/core/cache_helper.dart';
import 'package:islami/screen/home/home_screen.dart';
import 'package:islami/introduction_screen.dart';
import 'package:islami/screen/sura_details/sura_details_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(MyApp());
>>>>>>> 962221e496c78c8e344426928bdf3f7368b92c67
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: CacheHelper().getBool('introduction') == true
          ? HomeScreen.routeName
          : IntroductionScreens.routeName,
      routes: {
        IntroductionScreens.routeName: (context) => IntroductionScreens(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
      },
    );
  }
}
