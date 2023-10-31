import 'package:flutter/material.dart';
import 'package:movie_app/s5.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
         child: Column(
            children: [
              SingleChildScrollView(
                child: Container(
                  width: 400,
                  height: 850,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Color(0xFF1D1D1D)),
                  child: Stack(
                    children: [
                      Image.asset('assets/images/reset.png'), // Replace with your image
                      Positioned(
                        left: 0,
                        top: -1,
                        child: Container(
                          width: 400,
                          height: 803,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [
                                Color(0x000F1010),
                                Color(0xCC0F1010),
                                Color(0xFF0F1010),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 36,
                        top: 400,
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                        'Forgot Password',
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
                                  ],
                                ),
                              ),
                              const SizedBox(height: 32),
                              Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 328,
                                      height: 56,
                                      padding: const EdgeInsets.symmetric(horizontal: 16),
                                      decoration: ShapeDecoration(
                                        color: Color(0x7F474747),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          icon: Icon(
                                            Icons.email_outlined, // Use the email icon
                                            color: Color(0xFFDDDDDD), // Set the desired color
                                            size: 30, // Set the desired size
                                          ),
                                          hintText: 'Enter your email',
                                          labelStyle: TextStyle(
                                            color: Color(0xFF919191),
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    )
                                    ,
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 0),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add your password reset logic here
                                        Navigator.of(context).push(MaterialPageRoute(
                                            builder: (context) => LoginScreen()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFFFF2F2F), // Use the same fill color as the previous buttons
                                        padding: EdgeInsets.zero, // Remove extra padding
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: Container(
                                        width: 328,
                                        height: 56,
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Reset Password',
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ) ,
              )
              ,
            ],
          ),
      ),
    );
  }
}
