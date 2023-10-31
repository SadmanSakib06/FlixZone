import 'package:flutter/material.dart';

import '../details.dart';
import 'constants.dart';

// const MovieSlider({
// super.key,
// required this.snapshot,
// });

class MovieSlider extends StatelessWidget {
  const MovieSlider({
    super.key,
    required this.snapshot,
  });

  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 16),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        movie: snapshot.data[index],
                      ),
                    ),
                  );
                },


                //
                // child: ClipRRect(
                //   borderRadius: BorderRadius.circular(12),
                //   child: SizedBox(
                //     height: 300,
                //     width: 160,
                //     child: Image.network(
                //       filterQuality: FilterQuality.high,
                //       fit: BoxFit.cover,
                //       '${Constants.imagePath}${snapshot.data[index].poster_path}',
                //     ),
                //   ),
                // ),


                //

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 300,
                        width: 160,
                        child: Image.network(
                          '${Constants.imagePath}${snapshot.data[index].poster_path}',
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      Positioned(
                        bottom: 0, // Adjust the position as needed
                        left: 0,   // Adjust the position as needed
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                            ),
                          ),
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(snapshot.data[index].title,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 8), // Add some spacing between text and rating
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 16,
                              ),
                              Text(
                                snapshot.data[index].vote_average.toStringAsFixed(1), // Replace with your actual rating
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
