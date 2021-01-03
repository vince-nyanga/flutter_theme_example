import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:themes/features/features.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Theme Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system, // ThemeMode.system is the default. added here as an example
      debugShowCheckedModeBanner: false,
      home: ThemePage(),
    );
  }

  // light theme
  ThemeData get lightTheme => ThemeData.light().copyWith(
      primaryColor: Colors.teal[500],
      visualDensity: VisualDensity.adaptivePlatformDensity,
    // there are a lot of properties you can customise
  );

  // dark theme
  ThemeData get darkTheme => ThemeData.dark().copyWith(visualDensity: VisualDensity.adaptivePlatformDensity);
}