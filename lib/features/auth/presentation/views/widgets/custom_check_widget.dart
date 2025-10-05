import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mishkat/core/config/theme/app_colors.dart';
import 'package:mishkat/core/config/theme/app_text_styles.dart';
import 'package:mishkat/core/helper/responsive/extensions/size_helper_extension.dart';
import 'package:mishkat/core/utils/app_icons.dart';

class CustomCheckWidget extends StatelessWidget {
  const CustomCheckWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(text, style: AppTextStyles.amiri14,),
        SizedBox(width: context.setWidth(16)),
        SvgPicture.asset(AppIcons.check, width: 24, height: 24, fit: BoxFit.none, colorFilter: ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn)),
      ],
    );
  }
}