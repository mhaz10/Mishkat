import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mishkat/core/config/theme/app_colors.dart';
import 'package:mishkat/core/config/theme/app_text_styles.dart';
import 'package:mishkat/core/helper/responsive/extensions/size_helper_extension.dart';

class CustomAuthByAccount extends StatelessWidget {
  const CustomAuthByAccount({super.key, required this.text, required this.icon, this.onPressed});

  final String text;
  final String icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.setWidth(343),
      height: context.setHeight(48),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.black,
          side: BorderSide(color: AppColors.grey300),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: AppTextStyles.amiri16.copyWith(
                  fontWeight: FontWeight.w700
              ),
            ),
            SizedBox(width: context.setWidth(12)),
            SvgPicture.asset(icon)
          ],
        ),
      ),
    );
  }
}