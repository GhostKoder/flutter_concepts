import 'package:flutter/material.dart';

class TextFieldCard extends StatelessWidget {
  const TextFieldCard(
      {required this.emailController,
      required this.passwordController,
      super.key});
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 150,
      child: Card(
        elevation: 0,
        color: Theme.of(context).cardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTextField(
              hintText: 'Your Email',
              controller: emailController,
              obscureText: false,
            ),
            Divider(thickness: 1.5, color: Theme.of(context).dividerColor),
            _buildTextField(
              hintText: 'Your Password',
              controller: passwordController,
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
      {required String hintText,
      required TextEditingController controller,
      required bool obscureText}) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        hintStyle: const TextStyle(fontFamily: 'OpenSans'),
        contentPadding: const EdgeInsets.all(15.0),
        border: InputBorder.none,
        hintText: hintText,
      ),
    );
  }
}
