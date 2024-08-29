import 'package:flutter/material.dart';
import 'package:my_app/Screen/cardScreen.dart';
import 'package:my_app/Screen/historyScreen.dart';
import 'package:my_app/Screen/homePage.dart';
import 'package:my_app/Screen/profileScreen.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomePage(),
          HistoryScreen(),
          CardScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 99, 89, 237),
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.grey),
            activeIcon: Icon(Icons.home, color: Color.fromARGB(255, 99, 89, 237)), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.history, color: Colors.grey),
            activeIcon: Icon(Icons.history, color: Color.fromARGB(255, 99, 89, 237)), label: 'History'),
          BottomNavigationBarItem( icon: Icon(Icons.credit_card, color: Colors.grey),
            activeIcon: Icon(Icons.credit_card, color: Color.fromARGB(255, 99, 89, 237)), label: 'Card'),
          BottomNavigationBarItem( icon: Icon(Icons.person, color: Colors.grey),
            activeIcon: Icon(Icons.person, color: Color.fromARGB(255, 99, 89, 237)), label: 'Profile'),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
