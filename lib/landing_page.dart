import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'login_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87, // Dark background color
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
