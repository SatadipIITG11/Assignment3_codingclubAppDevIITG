import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight:100,
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

                SizedBox(
                  width: double.infinity,
                  child: CarouselSlider.builder(
                      //very interesting widget by flutter..
                      itemCount: 5,
                      options: CarouselOptions(
                          height: 300,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          viewportFraction: 0.55,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          pageSnapping: true),
                      itemBuilder: (context, itemIndex, pageViewIndex) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              color: Colors.amber,
                            ),
                          ),
                        );
                      }),
                ),

                SizedBox(
                  height: 20,
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
                  width: double.infinity,
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              height: 200,
                              width: 200,
                              color: Colors.amber,
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
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
                  width: double.infinity,
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              height: 200,
                              width: 200,
                              color: Colors.amber,
                            ),
                          ),
                        );
                      }),
                ),
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
