import 'package:flutter/material.dart';
import 'package:movie_app/s4.dart';
import 'package:movie_app/s6.dart';
import 'package:movie_app/s8.dart';



class LoginScreen extends StatelessWidget {
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
                  Image.asset('assets/images/op.png'),
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
                          colors: [Color(0x000F1010), Color(0xCC0F1010), Color(0xFF0F1010)],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 36,
                    top: 187,
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
                                    'Login to Your Account',
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
                                  alignment: Alignment.center,
                                  width: 328,
                                  height: 56,
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  decoration: ShapeDecoration(
                                    color: Color(0x7F474747),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
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
                                ),
                                const SizedBox(height: 8),
                                Container(
                                  alignment: Alignment.center,
                                  width: 328,
                                  height: 56,
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  decoration: ShapeDecoration(
                                    color: Color(0x7F474747),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      icon: Icon(
                                        Icons.lock_outlined, // Use the email icon
                                        color: Color(0xFFDDDDDD), // Set the desired color
                                        size: 30, // Set the desired size
                                      ),
                                      hintText: 'Enter your password',
                                      labelStyle: TextStyle(
                                        color: Color(0xFF919191),
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 0),
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Checkbox(
                                            value: false, // You can set this to true if it should start as checked
                                            onChanged: (bool? newValue) {
                                              // Handle checkbox state changes here
                                              // Typically, you would update a boolean variable in your state
                                              // to track the checkbox's state.
                                            },
                                          ),
                                          const SizedBox(width: 0),
                                          Text(
                                            'Remember me',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      )
                                      ,
                                    ],
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
                                const SizedBox(height: 0),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => InterestPage()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(
                                        0xFFFF2F2F), // Use the same fill color as the previous buttons
                                    padding:
                                    EdgeInsets.zero, // Remove extra padding
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: Container(
                                    width: 328,
                                    height: 56,
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Login',
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
                                const SizedBox(height: 8),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ForgotPasswordScreen()));
                                  },
                                  child: Text(
                                    'Forgot your password?',
                                    style: TextStyle(
                                      color: Color(
                                          0xFFDD222A), // Change to your desired color
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                )
                                ,
                              ],
                            ),
                          ),
                          const SizedBox(height: 32),
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 328,
                                  height: 24,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 9,
                                        child: Container(
                                          width: 87,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 2,
                                                strokeAlign:
                                                BorderSide.strokeAlignCenter,
                                                color: Color(0xFF323232),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 96,
                                        top: 0,
                                        child: Text(
                                          'Or Continue With',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFA2A2A2),
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 241,
                                        top: 9,
                                        child: Container(
                                          width: 87,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 2,
                                                strokeAlign:
                                                BorderSide.strokeAlignCenter,
                                                color: Color(0xFF323232),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          // Add your button click logic here
                                        },
                                        style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.all(0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            side: BorderSide(width: 1, color: Color(0xFF474747)), // Adjust the color as needed
                                          ),
                                          backgroundColor: Color(0x00FFFFFF), // Adjust the color as needed
                                        ),
                                        child: Container(
                                          width: 56,
                                          height: 56,
                                          padding: const EdgeInsets.symmetric(horizontal: 16),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 24,
                                                height: 24,
                                                child: Stack(
                                                  children: [
                                                    Image.asset('assets/images/fb.png'),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                      ,
                                      const SizedBox(width: 8),
                                      ElevatedButton(
                                        onPressed: () {
                                          // Add your button click logic here
                                        },
                                        style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.all(0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            side: BorderSide(width: 1, color: Color(0xFF474747)), // Adjust the color as needed
                                          ),
                                          backgroundColor: Color(0x00FFFFFF), // Adjust the color as needed
                                        ),
                                        child: Container(
                                          width: 56,
                                          height: 56,
                                          padding: const EdgeInsets.symmetric(horizontal: 16),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 24,
                                                height: 24,
                                                child: Stack(
                                                  children: [
                                                    Image.asset('assets/images/go.png'),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      ElevatedButton(
                                        onPressed: () {
                                          // Add your button click logic here
                                        },
                                        style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.all(0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            side: BorderSide(width: 1, color: Color(0xFF474747)), // Adjust the color as needed
                                          ),
                                          backgroundColor: Color(0x00FFFFFF), // Adjust the color as needed
                                        ),
                                        child: Container(
                                          width: 56,
                                          height: 56,
                                          padding: const EdgeInsets.symmetric(horizontal: 16),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 24,
                                                height: 24,
                                                child: Stack(
                                                  children: [
                                                    Image.asset('assets/images/ap.png'),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Don't have an account?",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SignUpScreen()));
                                        },
                                        child: Text(
                                          'Sign Up',
                                          style: TextStyle(
                                            color: Color(
                                                0xFFDD222A), // Change to your desired color
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
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