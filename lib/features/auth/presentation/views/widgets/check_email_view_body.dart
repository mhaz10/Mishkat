import 'package:flutter/material.dart';
import 'package:mishkat/core/config/theme/app_colors.dart';
import 'package:mishkat/core/config/theme/app_text_styles.dart';
import 'package:mishkat/core/helper/responsive/extensions/size_helper_extension.dart';
import 'package:mishkat/core/utils/app_images.dart';
import 'package:mishkat/core/widgets/custom_elevated_button.dart';

class CheckEmailViewBody extends StatelessWidget {
  const CheckEmailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: context.setHeight(83)),
          Image.asset(AppImages.checkEmail, height: context.setHeight(50), width: context.setWidth(50),),
          SizedBox(height: context.setHeight(16)),
          Text(' تحقق من بريدك الإلكتروني', style: AppTextStyles.amiri24,),
          SizedBox(height: context.setHeight(16)),
          Text('رسلنا رابط إعادة تعيين كلمة المرور إلى بريدك الإلكتروني', style: AppTextStyles.amiri16,),
          SizedBox(height: context.setHeight(43)),
          CustomElevatedButton(child: const Text('فتح البريد الإلكتروني'), onPressed: () {}),
          SizedBox(height: context.setHeight(24)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {}, child: Text('اضغط لإعادة الإرسال', style: AppTextStyles.amiri18.copyWith(color: AppColors.primaryColor, decoration: TextDecoration.underline, decorationColor: AppColors.primaryColor, decorationThickness: 2),)),
              Text('لم تستلم البريد الإلكتروني؟ ', style: AppTextStyles.amiri18,),
            ],
          ),
        ],
      ),
    );
  }
}
