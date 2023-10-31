import 'package:flutter/material.dart';
import 'package:movie_app/home1.dart';

class InterestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 400,
          height: 850,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFF1D1D1D)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    // Add your button click logic here
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Home()));
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(56, 56), // Set the size to 44x44 pixels
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // Half of the button size for a circular button
                    ),
                    backgroundColor: Color(0xFF6C6C6C), // Background color
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white, // Icon color
                    size: 30, // Icon size
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Choose Your Interests',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Choose your interests here and don't worry, you can always change them later.",
                  style: TextStyle(
                    color: Color(0xFFA2A2A2),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 30),
                Wrap(
                  spacing: 8.0, // Adjust the spacing as needed
                  runSpacing: 8.0, // Adjust the spacing as needed
                  children: [
                    InterestChip('Action'),
                    InterestChip('Drama'),
                    InterestChip('Fantasy'),
                    InterestChip('Music'),
                    InterestChip('Sci-Fi'),
                    InterestChip('Animation'),
                    InterestChip('Comedy'),
                    InterestChip('Horror'),
                    InterestChip('War'),
                    InterestChip('Crime'),
                    InterestChip('Romance'),
                    InterestChip('Adventure'),
                    InterestChip('History'),
                    InterestChip('Thriller'),
                  ],
                ),
                const SizedBox(height: 280),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your "Skip" button action here
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Home()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,  // Set a transparent background
                          foregroundColor: Colors.white,  // Text color
                          elevation: 2,  // Add elevation (shadow)
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Colors.white),  // Set a white border
                            borderRadius: BorderRadius.circular(12),
                          ),
                        )
                        ,
                        child: Container(
                          width: 158,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text('Skip',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your "Continue" button action here
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Home()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFF2F2F),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Container(
                          width: 158,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text('Continue',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





class InterestChip extends StatefulWidget {
  final String label;

  InterestChip(this.label);

  @override
  _InterestChipState createState() => _InterestChipState();
}

class _InterestChipState extends State<InterestChip> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: ShapeDecoration(
          color: isSelected ? Color(0xFFDD222A) : Colors.transparent,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: Colors.white, // Set the border color
            ),
            borderRadius: BorderRadius.circular(44),
          ),
        ),
        child: Text(
          widget.label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.white, // Set the text color
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

