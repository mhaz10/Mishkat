import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mishkat/core/config/theme/app_colors.dart';
import 'package:mishkat/core/config/theme/app_text_styles.dart';
import 'package:mishkat/core/helper/responsive/extensions/size_helper_extension.dart';
import 'package:mishkat/core/helper/validation/app_validator.dart';
import 'package:mishkat/core/utils/app_icons.dart';
import 'package:mishkat/core/utils/app_images.dart';
import 'package:mishkat/core/widgets/custom_elevated_button.dart';
import 'package:mishkat/core/widgets/custom_text_form_field.dart';

class ForgetPasswordViewBody extends StatefulWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  State<ForgetPasswordViewBody> createState() => _ForgetPasswordViewBodyState();
}

class _ForgetPasswordViewBodyState extends State<ForgetPasswordViewBody> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: context.setHeight(83)),
          Image.asset(AppImages.forgetPassword, height: context.setHeight(50), width: context.setWidth(50),),
          SizedBox(height: context.setHeight(16)),
          Text('هل نسيت كلمه المرور ؟', style: AppTextStyles.amiri24,),
          SizedBox(height: context.setHeight(16)),
          Text('أدخل بريدك الإلكتروني المسجل ليصلك رمز لإعادة تعيين كلمة  \n المرور', style: AppTextStyles.amiri16, textAlign: TextAlign.center,),
          SizedBox(height: context.setHeight(16)),
          Align(
            alignment: Alignment.centerRight,
            child: Text('البريد الالكتروني ', style: AppTextStyles.amiri16),
          ),
          SizedBox(height: context.setHeight(8)),
          CustomTextFormField(
            controller: emailController,
            hintText: 'ادخل البريد الالكتروني',
            keyboardType: TextInputType.emailAddress,
            isPassword: false,
            validator: EmailValidator(),
            prefixIcon: SvgPicture.asset(
              AppIcons.email,
              width: 24,
              height: 24,
              fit: BoxFit.none,
            ),
          ),
          SizedBox(height: context.setHeight(24)),
          CustomElevatedButton(child: const Text('إرسال رمز التأكيد'), onPressed: () {}),
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
