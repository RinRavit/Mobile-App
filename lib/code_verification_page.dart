import 'package:flutter/material.dart';
import 'new_password_page.dart';

class CodeVerificationPage extends StatelessWidget {
  final TextEditingController _codeController = TextEditingController();

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
                'WHAT CODE SEND?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Code Send to 0## ### ##6',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  return Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextField(
                      controller: _codeController,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                        hintText: '#',
                        hintStyle: TextStyle(color: Colors.white70),
                      ),
                      style: TextStyle(color: Colors.white, fontSize: 24),
                      keyboardType: TextInputType.number,
                    ),
                  );
                }),
              ),
              SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  // Implement send again logic here
                },
                child: Text(
                  'Send again!',
                  style: TextStyle(color: Colors.blue),
                ),
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
                            builder: (context) => NewPasswordPage()),
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
