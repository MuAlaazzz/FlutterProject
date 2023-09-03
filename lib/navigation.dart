// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/models/account_screen.dart'; 
import 'package:flutter_application_1/favoritesData.dart'; 
class MyNavigationBar extends StatefulWidget {  
  MyNavigationBar({Key? key}) : super(key: key);  
  
  @override  
  _MyNavigationBarState createState() => _MyNavigationBarState();  
}  
  
class _MyNavigationBarState extends State<MyNavigationBar > {  
  int _selectedIndex = 0;  
  final List<Widget> _widgetOptions = <Widget>[  
  const HomeScreen() , const accountScreen() , FavoritePage(),
  ];  
  
  void _onItemTapped(int index) {  
    setState(() {  
      _selectedIndex = index;  
    });  
  }  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold( 
        body: Center(  
        child: _widgetOptions.elementAt(_selectedIndex),  
      ), 
         bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey,
          selectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
          ],
        currentIndex: _selectedIndex,      
        onTap: _onItemTapped,   
       ),  
    );  
  }  
}  
