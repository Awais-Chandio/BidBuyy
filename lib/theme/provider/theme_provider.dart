import 'package:bidbuyweb/core/utils/pref_utils.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class ThemeProvider extends ChangeNotifier {
  themeChange(String themeType) async {
    PrefUtils().setThemeData(themeType);
    notifyListeners();
  }
}
