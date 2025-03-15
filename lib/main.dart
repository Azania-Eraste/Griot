import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'login_page.dart';
import 'signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: LoginPage(onLogin: (email, password) {
        // Handle login
        print('Email: $email, Password: $password');
      }),
      routes: {
        '/login': (context) => LoginPage(onLogin: (email, password) {
              // Handle login
              print('Email: $email, Password: $password');
            }),
        '/signup': (context) =>
            SignupPage(onSignup: (firstName, lastName, password) {
              print(
                  'First Name: $firstName, Last Name: $lastName, Password: $password');
            }),
      },
    );
  }
}
