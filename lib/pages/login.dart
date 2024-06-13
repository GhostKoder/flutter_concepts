import 'package:flutter/material.dart';
import 'package:flutter_concepts/components/custom_button.dart';
import 'package:flutter_concepts/components/custom_text_button.dart';
import 'package:flutter_concepts/components/text_field_card.dart';
import 'package:flutter_concepts/constants/colors.dart';
import 'package:flutter_concepts/pages/sign_up.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // log in
              _buildText1(),
              const SizedBox(height: 10),
              //enter your login details
              _buildText2(),
              const SizedBox(height: 30),
              // card
              TextFieldCard(
                emailController: _emailController,
                passwordController: _passwordController,
              ),
              const SizedBox(height: 60),
              // don't have an account
              _buildText3(),
              const SizedBox(height: 5),
              // create account button
              CustomTextButton(
                  label: 'CREATE ACCOUNT',
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ));
                  }),
              const SizedBox(height: 40),
              // continue button
              CustomButton(label: 'CONTINUE', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildText1() {
    return const Text(
      textAlign: TextAlign.center,
      'Log In',
      style: TextStyle(
        fontFamily: 'OpenSans',
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildText2() {
    return const Text(
      textAlign: TextAlign.center,
      'Enter your login details to access your account',
      style: TextStyle(
        fontFamily: 'OpenSans',
        fontSize: 17,
        fontWeight: FontWeight.normal,
        color: color3,
      ),
    );
  }

  Widget _buildText3() {
    return const Text(
      textAlign: TextAlign.center,
      'Don\'t have an account?',
      style: TextStyle(
        fontFamily: 'OpenSans',
        fontSize: 17,
        fontWeight: FontWeight.normal,
        color: color3,
      ),
    );
  }
}
