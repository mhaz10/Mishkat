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
import 'package:mishkat/features/auth/presentation/views/widgets/custom_auth_by_account.dart';


class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: context.setHeight(45)),
            Image.asset(AppImages.logo),
            SizedBox(height: context.setHeight(32)),
            Text('مرحبًا بك', style: AppTextStyles.amiri34),
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
            SizedBox(height: context.setHeight(16)),
            Align(
              alignment: Alignment.centerRight,
              child: Text('كلمة المرور ', style: AppTextStyles.amiri16),
            ),
            SizedBox(height: context.setHeight(8)),
            CustomTextFormField(
              controller: passwordController,
              hintText: 'ادخل كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
              isPassword: true,
              validator: PasswordValidator(),
              prefixIcon: SvgPicture.asset(
                AppIcons.lock,
                width: 24,
                height: 24,
                fit: BoxFit.none,
              ),
            ),
            SizedBox(height: context.setHeight(8)),
            Row(
              children: [
                TextButton(onPressed: () {}, child: Text('هل نسيت كلمة المرور؟', style: AppTextStyles.amiri16.copyWith(color: AppColors.primaryColor),)),
                Spacer(),
                Text('تذكرني', style: AppTextStyles.amiri16.copyWith(color: AppColors.primaryColor)),
                Checkbox(value: false, onChanged: (value) {}, side: const BorderSide(color: AppColors.primaryColor)),
              ],
            ),
            SizedBox(height: context.setHeight(24)),
            CustomElevatedButton(
              onPressed: () {},
              child: const Text('تسجيل دخول'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: context.setWidth(111), child: Divider()),
                  SizedBox(width: context.setWidth(16)),
                  IntrinsicWidth(
                    child: Text('أو', style: AppTextStyles.amiri16),
                  ),
                  SizedBox(width: context.setWidth(16)),
                  SizedBox(width: context.setWidth(111), child: Divider()),
                ],
              ),
            ),
            CustomAuthByAccount(
              text: ' تسجيل الدخول عبر جوجل ',
              icon: AppIcons.google,
            ),
            SizedBox(height: context.setHeight(16)),
            CustomAuthByAccount(
              text: ' تسجيل الدخول عبر الفيسبوك ',
              icon: AppIcons.facebook,
            ),
            SizedBox(height: context.setHeight(16)),
            CustomAuthByAccount(
              text: ' تسجيل الدخول عبر ابل ',
              icon: AppIcons.apple,
            ),
            SizedBox(height: context.setHeight(24)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {}, child: Text('إنشاء حساب', style: AppTextStyles.amiri18.copyWith(color: AppColors.primaryColor, decoration: TextDecoration.underline, decorationColor: AppColors.primaryColor, decorationThickness: 2),)),
                Text('ليس لديك حساب؟ ', style: AppTextStyles.amiri18,),
              ],
            ),
            SizedBox(height: context.setHeight(24)),
          ],
        ),
      ),
    );
  }
}
