import 'package:flutter/material.dart';
import 'package:mishkat/core/config/theme/app_colors.dart';
import 'package:mishkat/core/helper/validation/app_validator.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    required this.isPassword,
    required this.validator,
    required this.prefixIcon,
  });

  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool isPassword;
  final AppValidator validator;
  final Widget prefixIcon;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: widget.controller,
        cursorColor: AppColors.primaryColor,
        keyboardType: widget.keyboardType,
        validator: widget.validator.validate,
        obscureText: isObscure,
        decoration: InputDecoration(
          hintText: widget.hintText,
          alignLabelWithHint: true,
          hintTextDirection: TextDirection.rtl,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: isObscure
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: AppColors.grey400),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}
