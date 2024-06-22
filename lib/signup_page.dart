import 'package:flutter/material.dart';
import 'package:project_mobile_app/home_page.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
                'WELCOME NEW MEMBER!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person, color: Colors.white),
                  hintText: 'Username',
                  hintStyle: TextStyle(color: Colors.white70),
                  filled: true,
                  fillColor: Colors.grey[700],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                style: TextStyle(color: Colors.white),
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
              TextField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Colors.white),
                  hintText: 'Confirm Password',
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text('Sign up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
