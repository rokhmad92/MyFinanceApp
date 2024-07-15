import 'package:flutter/material.dart';

class ButtonElevated extends StatelessWidget {
  const ButtonElevated({
    super.key,
    this.styleText,
    this.backgroundColor,
    this.size,
    required this.onPress,
    required this.text,
  });

  final VoidCallback onPress;
  final String text;
  final TextStyle? styleText;
  final Color? backgroundColor;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Theme.of(context).highlightColor,
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          minimumSize: size ?? const Size(double.infinity, 50),
        ),
        child: Text(
          text,
          style: styleText ??
              Theme.of(context)
                  .primaryTextTheme
                  .displayMedium!
                  .copyWith(letterSpacing: 1.2),
        ));
  }
}
