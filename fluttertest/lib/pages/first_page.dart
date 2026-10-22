import 'package:flutter/material.dart';
import 'package:fluttertest/pages/home_page.dart';
import 'package:fluttertest/pages/profile_page.dart';
import 'package:fluttertest/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // Keeps Track of the Current Page to Display
  int _selectedIndex = 0;

  // The Pages in This App
  final List _pages = [
    // Homepage
    const HomePage(),

    // Profilepage
    const ProfilePage(),

    // Settingspage
    const SettingsPage(),
  ];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("1st Page"),
        centerTitle: true,
        backgroundColor: Colors.cyan[200],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          // Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          // Profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

          // Settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          )
        ],
      ),
    );
  }
}
