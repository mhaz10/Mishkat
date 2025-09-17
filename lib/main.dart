import 'package:flutter/material.dart';
import 'package:mishkat/core/config/theme/theme_data/them_data_dark.dart';
import 'package:mishkat/core/config/theme/theme_data/theme_data_light.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mishkat',
      theme: getLightTheme(),
      darkTheme: getDarkTheme(),
    );
  }
}
