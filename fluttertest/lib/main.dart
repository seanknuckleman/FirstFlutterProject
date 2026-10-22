// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:fluttertest/pages/first_page.dart';
import 'package:fluttertest/pages/home_page.dart';
import 'package:fluttertest/pages/settings_page.dart';

import 'mongodb.dart';

Future<void> main() async {
  // Retrieve Database Connection
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstPage(), // Defualt First Page
      routes: {
        '/fisrtpage': (context) => const FirstPage(),
        '/homepage': (context) => const HomePage(),
        '/settingspage': (context) => const SettingsPage(),
      },
    );
  }
}
