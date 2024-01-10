import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/apis/api.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/now_playing.dart';
import 'package:movie/top_rated.dart';
import 'package:movie/trending_slider.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<Movie>> trending;
  late Future<List<Movie>> topRated;
  late Future<List<Movie>> NowPlaying;

  @override
  void initState() {
    super.initState();

    trending = Api().getTrendingMovies();
    topRated = Api().getTopRatedMovies();
    NowPlaying=Api().getNowPlayingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Image.asset(
            'lib/images/cinema.png',
            height: 200,
            filterQuality: FilterQuality.high,
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //color bhi dal sakta hai letters par
                Text(
                  'Trending Movies',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                // TrendingSlider(),
                SizedBox(
                  child: FutureBuilder(
                      future: trending,
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Center(
                            child: Text(snapshot.error.toString()),
                          );
                        } else if (snapshot.hasData) {
                          return TrendingSlider(
                            snapshot: snapshot,
                          );
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }),
                ),

                SizedBox(
                  height: 27,
                ),
                Text(
                  'Top Rated Movies',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: FutureBuilder(
                      future: topRated,
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Center(
                            child: Text(snapshot.error.toString()),
                          );
                        } else if (snapshot.hasData) {
                          return TopRated(
                            snapshot: snapshot
                          );
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }),
                ),
                
                SizedBox(
                  height: 27,
                ),
                Text(
                  'Now Playing',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                SizedBox(
                  child: FutureBuilder(
                      future: NowPlaying,
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Center(
                            child: Text(snapshot.error.toString()),
                          );
                        } else if (snapshot.hasData) {
                          return Nowplaying(
                            snapshot: snapshot
                          );
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }),
                ),
                SizedBox(
                  height: 5,
                )

                
              ],
            ),
          ),
        ));
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(

//     );
//   }
// }
