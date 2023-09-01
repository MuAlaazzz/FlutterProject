import 'package:flutter/material.dart';
//import 'dart:async';

class Welcome extends StatefulWidget {
    const Welcome({super.key});

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 32, 54),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
          const Text.rich(
  TextSpan(
    children: <TextSpan>[
      TextSpan(text: 'E', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 70 , color: Colors.white)),
      TextSpan(text: 'Need', style: TextStyle(fontStyle: FontStyle.italic , fontSize:70 , color: Colors.blueGrey)),
    ],
  ),
),
 SizedBox(height: 5),
            Image.asset(
              "assets/pngwing.com.png",
              height: 350,
              width: 600,
            ),
          ],
        ),
      ),
    );
  }
  }