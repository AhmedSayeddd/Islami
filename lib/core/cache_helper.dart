import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late final SharedPreferences prefs;
  static Future<void> init() async {
    // ignore: unused_local_variable
    prefs = await SharedPreferences.getInstance();
  }

  Future<bool> saveBool(String key, bool value) async {
    return await prefs.setBool(key, value);
  }

  bool? getBool(String key) {
    return prefs.getBool(key);
  }
}
