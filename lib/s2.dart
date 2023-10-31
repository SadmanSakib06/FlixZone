import 'package:flutter/material.dart';
import 'package:movie_app/s3.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 400,
              height: 850,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Color(0xFF1D1D1D)),
              child: Stack(
                children: [
                  Image.asset('assets/images/p1.png'),
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 360,
                      height: 803,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.00, -1.00),
                          end: Alignment(0, 1),
                          colors: [Color(0x000F1010), Color(0xCC0F1010), Color(0xFF0F1010)],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 32,
                    top: 514,
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 328,
                                  child: Text(
                                    'Welcome to FlixZone',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 328,
                                  child: Text(
                                    'One App, Endless Recommendations. Offering tailored content just for you!',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFA2A2A2),
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 32),
                          InkWell(
                            onTap: () {
                              // Add navigation code here to go to the next screen
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => WelcomeScreen()));
                            },
                            child: Container(
                              width: 328,
                              height: 50,
                              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                              decoration: BoxDecoration(
                                color: Color(0xFFFF2F2F),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  'Get Started',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
