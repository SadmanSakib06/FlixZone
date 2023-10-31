import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/api/api.dart';
import 'package:movie_app/widgets/MovieSearch.dart';
import 'package:movie_app/widgets/MovieSliderBuilder.dart';
import 'package:movie_app/widgets/TrendingMovies.dart';
import 'models/movie.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<Movie>> trendingMovies;
  late Future<List<Movie>> newMovies;
  late Future<List<Movie>> topMovies;

  @override
  void initState() {
    super.initState();
    trendingMovies = Api().getTrendingMovies();
    newMovies = Api().getNewReleased();
    topMovies = Api().getMustWatch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D1D1D),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF919191), // Set the desired color for the search icon
                    ),
                    hintText: 'Search for movies...',
                    hintStyle: TextStyle(
                      color: Color(0xFF919191), // Set the desired color for the hint text
                    ),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    color: Color(0xFF474747), // Set the desired color for keyboard input
                  ),
                  cursorColor: Colors.blue, // Set the desired color for the cursor
                  onChanged: (value) {
                    // Implement your search logic here
                    // 'value' contains the text entered in the search bar
                  },
                ),
              ),

              const SizedBox(height: 32),
              Text('Trending Movies', style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),),
              const SizedBox(height: 8),
              //
              SizedBox(
                child: FutureBuilder(
                  future: trendingMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(child: Text(snapshot.error.toString()));
                    } else if (snapshot.hasData) {
                      final data = snapshot.data;
                      if (data != null) {
                        return TrendingSlider(snapshot: snapshot,); // Pass data to your TrendingSlider widget
                      } else {
                        return Text("No data available");
                      }
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),



              //


              const SizedBox(height: 32),
              Text('New Release', style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),),
              const SizedBox(height: 8),
              SizedBox(
                child: FutureBuilder(
                  future: newMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(child: Text(snapshot.error.toString()));
                    } else if (snapshot.hasData) {
                      final data = snapshot.data;
                      if (data != null) {
                        return MovieSlider(snapshot: snapshot,); // Pass data to your TrendingSlider widget
                      } else {
                        return Text("No data available");
                      }
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
              const SizedBox(height: 32),
              Text('Must Watch', style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),),
              const SizedBox(height: 8),
              SizedBox(
                child: FutureBuilder(
                  future: topMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(child: Text(snapshot.error.toString()));
                    } else if (snapshot.hasData) {
                      final data = snapshot.data;
                      if (data != null) {
                        return MovieSlider(snapshot: snapshot,); // Pass data to your TrendingSlider widget
                      } else {
                        return Text("No data available");
                      }
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
