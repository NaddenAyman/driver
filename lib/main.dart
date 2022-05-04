import 'package:driverschoolbus/presentation/screens/forget_password_screen.dart';
import 'package:driverschoolbus/presentation/screens/verification_code_screen.dart';
import 'package:driverschoolbus/presentation/screens/verification_mail_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color(0xFFFFAB4C),
      ),

      home: VerificationCodeScreen(),
    );
  }
}


