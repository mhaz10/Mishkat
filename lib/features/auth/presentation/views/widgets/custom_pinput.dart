import 'package:flutter/cupertino.dart';
import 'package:mishkat/core/config/theme/app_colors.dart';
import 'package:mishkat/core/config/theme/app_text_styles.dart';
import 'package:mishkat/core/helper/responsive/extensions/size_helper_extension.dart';
import 'package:pinput/pinput.dart';

class CustomPinPut extends StatelessWidget {
  const CustomPinPut({super.key});

  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(
      width: context.setWidth(48),
      height: context.setHeight(54),
      textStyle: AppTextStyles.amiri20.copyWith(
        color: AppColors.primaryColor
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey400, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
    );


    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppColors.primaryColor, width: 2),
    );

    final submittedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppColors.primaryColor, width: 2),
    );

    return Pinput(
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      length: 6,
      validator: (s) {
        return s == '2222' ? null : 'Pin is incorrect';
      },
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      onCompleted: (pin) => print(pin),
    );
  }
}
