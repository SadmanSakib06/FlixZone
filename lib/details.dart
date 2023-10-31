import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/widgets/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D1D1D),
      // appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Container(
              height: 70,
              width: 70,
              margin: const EdgeInsets.only(top: 16, left: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  size: 30,
                ),
              ),
            ),
            backgroundColor: Color(0xFF1D1D1D),
            expandedHeight: 500,
            pinned: true,
            floating: true,
            flexibleSpace: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  '${Constants.imagePath}${movie.poster_path}',
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black, Colors.transparent],
                      stops: [0.05, 0.95],
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      movie.title,
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Text(
                    'Overview',
                    style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    movie.overview,
                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Release Date: ',
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                movie.release_date,
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Rating: ',
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Text('${movie.vote_average.toStringAsFixed(1)}/10'),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

