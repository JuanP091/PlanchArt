import 'dart:async';

import 'package:flutter/material.dart';
import 'package:planchapp/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 30); // Changed to 3 seconds for demonstration
    return Timer(duration, navigateToMainScreen);
  }

  navigateToMainScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MyHomePage(title: "Hello")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5c5d5c),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/PlanchArteLogo.jpg',
            ),
            SizedBox(height: 20), // Space below the image
            Text(
              'Welcome to PlanchArte!',
              style: TextStyle(
                fontFamily: 'apache',
                fontSize: 24,
                color: Color(0xff7cb62f),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10), // Space between texts
            Text(
              'Bienvenidos a PlanchArte!',
              style: TextStyle(
                fontFamily: 'apache',
                fontSize: 24,
                color: Color(0xff7cb62f),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
