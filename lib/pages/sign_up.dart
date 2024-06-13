import 'package:flutter/material.dart';
import 'package:flutter_concepts/components/custom_button.dart';
import 'package:flutter_concepts/components/custom_text_button.dart';
import 'package:flutter_concepts/constants/colors.dart';
import 'package:flutter_concepts/pages/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _buildLeading(context: context),
        //backgroundColor: ,
        title: const Text(
          'CREATE ACCOUNT',
          style: TextStyle(
            fontFamily: 'OpenSans',
            color: color3,
          ),
        ),
        centerTitle: true,
        //backgroundColor: color1,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //const SizedBox(height: 20),
              _buildText1(),
              const SizedBox(height: 20),
              _buildCard(context: context),
              const SizedBox(height: 40),
              _buildText2(),
              const SizedBox(height: 5),
              CustomTextButton(
                  label: 'SIGN IN',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  }),
              const SizedBox(height: 40),
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
      'Start by entering your email address below.',
      style: TextStyle(fontFamily: 'OpenSans', fontSize: 20, color: color3),
    );
  }

  Widget _buildText2() {
    return const Text(
      'Already have an account?',
      textAlign: TextAlign.center,
      style: TextStyle(fontFamily: 'OpenSans', fontSize: 20, color: color3),
    );
  }

  Widget _buildCard({required BuildContext context}) {
    return SizedBox(
      height: 75,
      width: 400,
      child: Card(
        color: Theme.of(context).cardColor,
        elevation: 0,
        child: TextField(
          controller: _emailController,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Your Email',
            contentPadding: EdgeInsets.all(25.0),
          ),
        ),
      ),
    );
  }

  Widget _buildLeading({required BuildContext context}) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: const Icon(
        Icons.arrow_back,
        color: color6,
      ),
    );
  }
}
