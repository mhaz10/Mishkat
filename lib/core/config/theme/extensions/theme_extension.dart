import 'package:flutter/material.dart';

extension context on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
}