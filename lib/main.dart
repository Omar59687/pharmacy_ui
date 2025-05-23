import 'package:flutter/material.dart';
import 'package:pharmacy_ui/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:
            Color(0xFFD1CFFB), // Set your desired color here
      ),
      home: const HomePage(),
    );
  }
}
