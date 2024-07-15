import 'package:flutter/material.dart';

class FormText extends StatelessWidget {
  const FormText({
    super.key,
    this.prefixIcon,
    this.backgroundColor,
    this.borderColor,
    this.borderFocusColor,
    this.suffixIcon,
    required this.labelText,
    required this.hintText,
    required this.obscureText,
  });

  final Icon? prefixIcon;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? borderFocusColor;
  final GestureDetector? suffixIcon;
  final String labelText;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 12),
          child: suffixIcon,
        ),
        filled: true,
        fillColor: backgroundColor ?? Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          borderSide:
              BorderSide(color: borderColor ?? Colors.black, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          borderSide:
              BorderSide(color: borderFocusColor ?? Colors.black, width: 2.0),
        ),
      ),
    );
  }
}
