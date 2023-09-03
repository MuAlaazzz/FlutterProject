import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class accountScreen extends StatefulWidget {
  const accountScreen({super.key});

  @override
  State<accountScreen> createState() => _accountScreenState();
}

class _accountScreenState extends State<accountScreen> {
  //user data {email , user name}
  final User = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconTheme(
          data: IconThemeData(color: Colors.black),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {
              // Handle the leading icon press
            },
          ),
        ),
        title: Text(
          "Account",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 27,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_medium_sharp),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 65.0,
                      backgroundImage:
                          AssetImage('lib/assets/Yellow Cartoon Character.png'),
                    ),
                    CircleAvatar(
                      radius: 19.0,
                      backgroundColor: Colors.white,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                            width: 36,
                            height: 36,
                            color: Colors.deepOrange,
                            child: Icon(Icons.edit))),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Salma Said",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  User.email!,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: MaterialButton(
                    height: 60,
                    elevation: 0.5,
                    color: Colors.white70,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(Icons.settings),
                        ),
                        Expanded(child: Text("Settings")),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: MaterialButton(
                    height: 60,
                    elevation: 0.5,
                    color: Colors.white70,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(Icons.language_rounded),
                        ),
                        Expanded(child: Text("Language")),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: MaterialButton(
                    height: 60,
                    elevation: 0.5,
                    color: Colors.white70,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(Icons.notifications),
                        ),
                        Expanded(child: Text("Notifications")),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: MaterialButton(
                    height: 60,
                    elevation: 0.8,
                    color: Colors.orange,
                    onPressed: logout,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.logout_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Logout",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),  
    );
  }

  //sign out Method
  void logout() {
    FirebaseAuth.instance.signOut();
  }
}
