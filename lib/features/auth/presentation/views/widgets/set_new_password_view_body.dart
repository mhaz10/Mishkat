import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mishkat/core/config/theme/app_text_styles.dart';
import 'package:mishkat/core/helper/responsive/extensions/size_helper_extension.dart';
import 'package:mishkat/core/helper/validation/app_validator.dart';
import 'package:mishkat/core/utils/app_icons.dart';
import 'package:mishkat/core/utils/app_images.dart';
import 'package:mishkat/core/widgets/custom_elevated_button.dart';
import 'package:mishkat/core/widgets/custom_text_form_field.dart';
import 'package:mishkat/features/auth/presentation/views/widgets/custom_check_widget.dart';

class SetNewPasswordViewBody extends StatefulWidget {
  const SetNewPasswordViewBody({super.key});

  @override
  State<SetNewPasswordViewBody> createState() => _SetNewPasswordViewBodyState();
}

class _SetNewPasswordViewBodyState extends State<SetNewPasswordViewBody> {
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: context.setHeight(83)),
          Image.asset(AppImages.setNewPassword, height: context.setHeight(50), width: context.setWidth(50),),
          SizedBox(height: context.setHeight(16)),
          Text('تعيين كلمة مرور جديدة', style: AppTextStyles.amiri24,),
          SizedBox(height: context.setHeight(16)),
          Text('يجب أن تكون كلمة المرور الجديدة مختلفة عن كلمات المرور التي استخدمتها سابقًا', style: AppTextStyles.amiri16, textAlign: TextAlign.center,),
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
          SizedBox(height: context.setHeight(16)),
          Align(
            alignment: Alignment.centerRight,
            child: Text('تأكيد كلمة المرور', style: AppTextStyles.amiri16),
          ),
          SizedBox(height: context.setHeight(8)),
          CustomTextFormField(
            controller: passwordController,
            hintText: 'تأكيد كلمة المرور',
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
          SizedBox(height: context.setHeight(24)),
          CustomCheckWidget(text: 'يجب ألا يقل عن 8 أحرف'),
          SizedBox(height: context.setHeight(16)),
          CustomCheckWidget(text: 'جب أن يحتوي على رمز خاص واحد على الأقل'),
          SizedBox(height: context.setHeight(33)),
          CustomElevatedButton(
            onPressed: () {},
            child: const Text('تغير كلمه المرور'),
          ),
        ],
      ),
    );
  }
}
