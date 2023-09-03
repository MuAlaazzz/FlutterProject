import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/signin.dart';
import 'package:flutter_application_1/models/signup_screen.dart';

class SignInOrSignUp extends StatefulWidget {
  const SignInOrSignUp({super.key});

  @override
  State<SignInOrSignUp> createState() => _SignInOrSignUpState();
}

class _SignInOrSignUpState extends State<SignInOrSignUp> {
  //first we show sign in screen
  bool showSignInscreen = true;

  //toggle between sign in and sign up screen
  void togglePages() {
    setState(() {
      showSignInscreen = !showSignInscreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignInscreen) {
      return sign_in_Screen(
        onTap: togglePages,
      );
    } else {
      return Sign_up(
        onTap: togglePages,
      );
    }
  }
}
