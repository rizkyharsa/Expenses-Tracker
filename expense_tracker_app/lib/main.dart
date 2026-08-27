import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splashscreen.dart';
import 'utility/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expenses Tracker',
      // themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      home: const Splashscreen(),
    );
  }
}
