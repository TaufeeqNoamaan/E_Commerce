import 'package:app/constants/colors.dart';
import 'package:app/pages/home_page.dart';
import 'package:app/pages/registration.dart';
import 'package:app/pages/sign_in.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue
      ),
      home: const HomePage(),
      routes: {
        '/register' :(context) => const RegistrationPage(),
        'sign-in':(context) => const SignInPage(),
        'Home':(context) => const HomePage(),
      },
    );
  }
}

