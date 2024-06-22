import 'package:flutter/material.dart';
import 'code_verification_page.dart';

class ForgotPasswordPage extends StatelessWidget {
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.symmetric(horizontal: 24.0),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'FORGOT PASSWORD !!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _phoneNumberController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone, color: Colors.white),
                  hintText: 'Phone Number',
                  hintStyle: TextStyle(color: Colors.white70),
                  labelText: 'What your number?',
                  labelStyle: TextStyle(color: Colors.white70),
                  filled: true,
                  fillColor: Colors.grey[700],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                keyboardType: TextInputType.phone,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CodeVerificationPage()),
                      );
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
