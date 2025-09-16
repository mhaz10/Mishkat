import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

class AppShadows {
  AppShadows._();

  static const primaryShadow = BoxShadow(
    color: AppColors.shadowColor,
    offset: Offset(0, 1),
    blurRadius: 2,
    spreadRadius: 0,
  );
}