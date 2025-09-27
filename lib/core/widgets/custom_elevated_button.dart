import 'package:flutter/material.dart';
import 'package:mishkat/core/helper/responsive/extensions/size_helper_extension.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.onPressed,
    required this.child,
    this.style,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style:
          style ??
          ElevatedButton.styleFrom(
            fixedSize: Size(context.setWidth(343), context.setHeight(48)),
          ),
      child: child,
    );
  }
}
