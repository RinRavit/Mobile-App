// import 'package:flutter/material.dart';
// import 'landing_page.dart';
// import 'login_page.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LandingPage(),
//       routes: {
//         '/login': (context) => LoginPage(),
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'landing_page.dart';
import 'login_page.dart';
import 'forgot_password_page.dart';
import 'code_verification_page.dart';
import 'new_password_page.dart';
import 'signup_page.dart';
import 'home_page.dart';
import 'menu_page.dart';
import 'search_page.dart';
import 'profile_page.dart';
import 'order_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/forgot_password': (context) => ForgotPasswordPage(),
        '/code_verification': (context) => CodeVerificationPage(),
        '/new_password': (context) => NewPasswordPage(),
        '/signup': (context) => SignupPage(),
        '/home': (context) => HomePage(),
        '/menu': (context) => MenuPage(),
        '/search': (context) => SearchPage(),
        '/profile': (context) => ProfilePage(),
        '/order': (context) => OrderPage(),
      },
    );
  }
}
