import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.system;
  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }
  void toggleTheme(bool isOn){
    print(isOn);
    themeMode= isOn? ThemeMode.dark : ThemeMode.light;
  }
}
class MyThemes{
  static final darkTheme=ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade700,

    primaryColor: Colors.black,
    colorScheme: ColorScheme.light(
    ),
  );
  static final lightTheme= ThemeData(
      scaffoldBackgroundColor: Colors.white,

    primaryColor: Colors.white,
    colorScheme: ColorScheme.light(),
  );
}