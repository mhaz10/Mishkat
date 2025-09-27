import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mishkat/core/config/route/app_route.dart';
import 'package:mishkat/core/config/theme/app_text_styles.dart';
import 'package:mishkat/core/helper/responsive/extensions/size_helper_extension.dart';
import 'package:mishkat/core/utils/app_images.dart';
import 'package:mishkat/core/widgets/custom_elevated_button.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: context.setHeight(48)),
        Image.asset(
          AppImages.onboarding,
          height: context.setHeight(374),
          width: context.setWidth(374),
        ),
        Column(
          children: [
            Text(
              'رحلة متكاملة مع القرآن',
              style: AppTextStyles.amiri24.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ' تطبيق ديني شامل يجمع بين الحفظ، المراجعة، والخرائط التحفظية الذكية ليسهّل رحلتك خطوة بخطوة.',
              style: AppTextStyles.amiri24,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        SizedBox(height: context.setHeight(96)),
        CustomElevatedButton(
          child: const Text('ابدأ رحلتك'),
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRoute.kGetStartedView);
          },
        ),
        Spacer(),
      ],
    );
  }
}
