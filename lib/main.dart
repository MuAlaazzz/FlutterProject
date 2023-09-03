import 'package:flutter/material.dart';
import 'package:flutter_application_1/splash.dart';
import 'home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'models/Auth.dart';
import 'models/account_screen.dart';
import 'models/signin.dart';
import 'models/signup_screen.dart';
import 'package:flutter_application_1/navigation.dart';

void main() async {
  // to conect the firebase with the app
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome()
    );
  }
}
