import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mishkat/core/config/route/app_route.dart';
import 'package:mishkat/core/config/theme/app_colors.dart';
import 'package:mishkat/core/config/theme/app_text_styles.dart';
import 'package:mishkat/core/helper/responsive/extensions/size_helper_extension.dart';
import 'package:mishkat/core/utils/app_images.dart';
import 'package:mishkat/core/widgets/custom_elevated_button.dart';

class GetStartedViewBody extends StatelessWidget {
  const GetStartedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: context.setHeight(65)),
        Image.asset(
          AppImages.getStarted,
          height: context.setHeight(177.24658203125),
          width: context.setWidth(161.4375),
        ),
        SizedBox(height: context.setHeight(16)),
        Text('مشكاة', style: AppTextStyles.amiri43,),
        SizedBox(height: context.setHeight(46)),
        Text(
          'مرحباً بك في مشكاه ',
          style: AppTextStyles.amiri24.copyWith(fontWeight: FontWeight.bold, color: AppColors.grey400),
        ),
        SizedBox(height: context.setHeight(8)),
        Text(
          'للحصول على تجربة مميزة، يمكنك تسجيل الدخول أو إنشاء حساب جديد',
          style: AppTextStyles.amiri20.copyWith(color: AppColors.grey500),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: context.setHeight(32)),
        CustomElevatedButton(onPressed: () {
          GoRouter.of(context).push(AppRoute.kSignupView);
        }, child: const Text('إنشاء حساب')),
        SizedBox(height: context.setHeight(24)),
        CustomElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.grey0,
            foregroundColor: AppColors.primaryColor,
            side: const BorderSide(color: AppColors.primaryColor, width: 1.5),
            fixedSize: Size(context.setWidth(343), context.setHeight(48))
          ),
          child: const Text('تسجيل دخول'),
          onPressed: () {

          },
        ),
      ],
    );
  }
}
