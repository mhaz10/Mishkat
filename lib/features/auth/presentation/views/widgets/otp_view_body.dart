import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mishkat/core/config/theme/app_colors.dart';
import 'package:mishkat/core/config/theme/app_text_styles.dart';
import 'package:mishkat/core/helper/responsive/extensions/size_helper_extension.dart';
import 'package:mishkat/core/utils/app_images.dart';
import 'package:mishkat/core/widgets/custom_elevated_button.dart';
import 'package:mishkat/features/auth/presentation/views/widgets/custom_pinput.dart';

class OtpViewBody extends StatelessWidget {
  const OtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {



    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: context.setHeight(83)),
          Image.asset(AppImages.checkEmail, height: context.setHeight(50), width: context.setWidth(50),),
          SizedBox(height: context.setHeight(16)),
          Text('التحقق من الكود', style: AppTextStyles.amiri24,),
          SizedBox(height: context.setHeight(16)),
          Text('الرجاء ادخال الكود الذي ارسلناه الي البريد الالكتروني    meshkat******@gamil.com', style: AppTextStyles.amiri16, textAlign: TextAlign.center,),
          SizedBox(height: context.setHeight(24)),
          Text('00:30', style: GoogleFonts.poppins(
            fontSize: 21,
            fontWeight: FontWeight.w500,
          ),),
          SizedBox(height: context.setHeight(16)),
          CustomPinPut(),
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
