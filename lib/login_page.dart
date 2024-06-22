import 'package:flutter/material.dart';
import 'forgot_password_page.dart';
import 'signup_page.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                'LOG IN ACCOUNT!',
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
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Colors.white),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white70),
                  filled: true,
                  fillColor: Colors.grey[700],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                obscureText: true,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Text('Remember me', style: TextStyle(color: Colors.white)),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPasswordPage()),
                      );
                    },
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Implement login logic here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text('Log in'),
              ),
              SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                child: Text(
                  'No account? Create account',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
