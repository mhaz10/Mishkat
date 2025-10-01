import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:mishkat/core/config/theme/app_colors.dart';


class CustomDropdownFormField extends StatelessWidget {
  const CustomDropdownFormField({super.key, required this.hint, required this.prefixIcon, this.onChanged, this.items});

  final Widget hint;
  final Widget prefixIcon;
  final List<DropdownMenuItem<String>>? items;
  final ValueChanged? onChanged;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButtonFormField2<String>(
        isExpanded: false,
        hint: hint,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          prefixIcon: prefixIcon,
        ),
        iconStyleData: IconStyleData(
          icon: Icon(Icons.keyboard_arrow_down_outlined, color: AppColors.grey500,),
          iconSize: 24,
        ),
        dropdownStyleData: DropdownStyleData(
          decoration: BoxDecoration(
            color: AppColors.grey0,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
          ),
        ),
        items: items,
        onChanged: onChanged
      ),
    );
  }
}
