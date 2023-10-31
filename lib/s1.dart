import 'package:flutter/material.dart';
import 'package:movie_app/s2.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay to navigate to the next screen after 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      // Replace 'YourNextScreen()' with the widget or screen you want to navigate to.
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GetStarted()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 400,
              height: 850,
              padding: const EdgeInsets.symmetric(horizontal: 80),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Color(0xFF1D1D1D)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 150,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/Logo.png')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
