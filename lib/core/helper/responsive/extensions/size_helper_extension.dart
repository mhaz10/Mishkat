import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:mishkat/core/helper/responsive/size_provider.dart';


extension SizeHelperExtension on BuildContext {
  bool get isLandscape => MediaQuery.of(this).orientation == Orientation.landscape;

  double get width => isLandscape ? MediaQuery.of(this).size.height : MediaQuery.of(this).size.width;

  double get height => isLandscape ? MediaQuery.of(this).size.width : MediaQuery.of(this).size.height;

  SizeProvider get sizeProvider => SizeProvider.of(this);

  double get scaleWidth => sizeProvider.width / sizeProvider.baseSize.width;

  double get scaleHeight => sizeProvider.height / sizeProvider.baseSize.height;

  double setWidth(double width) => width * scaleWidth;

  double setHeight(double height) => height * scaleHeight;

  double setSp(double fontSize) => fontSize * scaleWidth;

  double setMin(double size) => size * min(scaleWidth , scaleHeight);
}