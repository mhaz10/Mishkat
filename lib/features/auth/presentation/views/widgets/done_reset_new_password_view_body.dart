import 'package:flutter/material.dart';
import 'package:mishkat/core/config/theme/app_text_styles.dart';
import 'package:mishkat/core/helper/responsive/extensions/size_helper_extension.dart';
import 'package:mishkat/core/utils/app_images.dart';
import 'package:mishkat/core/widgets/custom_elevated_button.dart';

class DoneResetNewPasswordViewBody extends StatelessWidget {
  const DoneResetNewPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: context.setHeight(83)),
          Image.asset(AppImages.doneResetNewPassword, height: context.setHeight(50), width: context.setWidth(50),),
          SizedBox(height: context.setHeight(16)),
          Text('اعاده تعين كلمه المرور ', style: AppTextStyles.amiri24,),
          SizedBox(height: context.setHeight(16)),
          Text('لقد تم تعير كلمه المرور بنجاح انقر لتسجيل الدخول', style: AppTextStyles.amiri16,),
          SizedBox(height: context.setHeight(35)),
          CustomElevatedButton(child: const Text('تسجيل دخول'), onPressed: () {}),
        ],
      ),
    );
  }
}
