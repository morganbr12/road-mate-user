import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
    this.text, {
    this.foregroundColor,
    this.onPressed,
    this.textStyle,
    this.surfaceTintColor,
    super.key,
  });

  final String text;
  final Function()? onPressed;
  final Color? foregroundColor;
  final TextStyle? textStyle;
  final Color? surfaceTintColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        textStyle: textStyle,
        surfaceTintColor: surfaceTintColor,
      ),
      child: Text(text),
    );
  }
}
