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

  static Future<void> saveList(int index) async {
    // ignore: unused_local_variable
    var previousList = getList("items");
    previousList.add(index);
    var data = previousList.map((e) => e.toString()).toList() ?? [];
    await prefs.setStringList('items', data);
  }

  static List<int> getList(String key) {
    final List<String>? data = prefs.getStringList(key);
    if (data == null) {
      return <int>[];
    }
    return data.map((e) => int.tryParse(e) ?? 0).toSet().toList();
  }
}
