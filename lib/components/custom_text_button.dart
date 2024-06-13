import 'package:flutter/material.dart';
import 'package:flutter_concepts/constants/colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {required this.label, required this.onPressed, super.key});
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        label,
        style: const TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: color5,
        ),
      ),
    );
  }
}
