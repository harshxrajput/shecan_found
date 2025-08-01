// lib/main.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/login.dart';

void main() {
  runApp(const InternApp());
}

class InternApp extends StatelessWidget {
  const InternApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intern Fundraiser',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1A73E8),
          elevation: 0,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}