// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'login_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 40, 49), // Dark background color
      body: Center(
        child: Text(
          'WELCOME BACK!',
          style: TextStyle(
            color: Colors.white, // Text color
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0, // Spacing between letters
          ),
        ),
      ),
    );
  }
}
