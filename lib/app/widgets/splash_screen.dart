import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFEC2028),
        body: Center(
          child: Container(
            width: 100,
            child: Image.asset("assets/images/icon.png"),
          ),
        ),
      ),
    );
  }
}
