import 'package:flutter/material.dart';
import 'package:flutter_concepts/constants/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.label, required this.onPressed, super.key});
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 400,
        height: 70,
        decoration: BoxDecoration(
          color: color5,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            _buildText(context: context),
            Positioned(right: 15, child: _buildIcon()),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon() {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        color: color6,
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.arrow_forward,
        color: color1,
      ),
    );
  }

  Widget _buildText({required BuildContext context}) {
    return Text(
      label,
      style: const TextStyle(
        fontFamily: 'OpenSans',
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: color1,
      ),
    );
  }
}
