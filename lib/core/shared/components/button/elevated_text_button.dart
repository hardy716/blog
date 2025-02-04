import 'package:flutter/material.dart';

class ElevatedTextButton extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final String buttonText;
  final VoidCallback? onPressed;

  /// FIXME
  static const double _defaultFontSize = 14.0;
  static const double _pressedFontSize = 13.8;

  const ElevatedTextButton({
    super.key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.buttonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(backgroundColor),
        foregroundColor: WidgetStateProperty.all(foregroundColor),
        textStyle: WidgetStateProperty.resolveWith((states) {
          return TextStyle(
            fontSize: states.contains(WidgetState.pressed)
                ? _pressedFontSize
                : _defaultFontSize,
          );
        }),
      ),
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}
