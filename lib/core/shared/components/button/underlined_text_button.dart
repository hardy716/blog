import 'package:flutter/material.dart';

import '../../../app/app_colors.dart';

class UnderlinedTextButton extends StatelessWidget {
  final String buttonText;
  final bool isUnderlined;
  final Color? textColor;
  final Color? focusColor;
  final VoidCallback? onPressed;

  const UnderlinedTextButton({
    super.key,
    required this.buttonText,
    required this.isUnderlined,
    this.textColor,
    this.focusColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            border: (isUnderlined)
                ? Border(
                    bottom: BorderSide(
                      color: focusColor ?? AppColors.oceanBlue,
                      width: 0.8,
                    ),
                  )
                : null,
          ),
          child: Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              buttonText,
              style: TextStyle(
                color: (isUnderlined)
                    ? focusColor ?? AppColors.oceanBlue
                    : textColor,
              ),
            ),
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
