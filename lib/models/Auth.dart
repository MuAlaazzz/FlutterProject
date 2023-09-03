import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/models/SignInORSignUp.dart';
import 'package:flutter_application_1/models/account_screen.dart';
import 'package:flutter_application_1/models/signin.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            //user is signed in
            return accountScreen();
          } else {
            //user is not signed in
            return SignInOrSignUp();
          }
        }),
      ),
    );
  }
}
