import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie/constants.dart';

class TrendingSlider extends StatelessWidget {
  AsyncSnapshot snapshot;

  TrendingSlider({required this.snapshot});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
          //very interesting widget by flutter..
          itemCount: 10,
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
                  height: 400,
                  width: 300,
                  child: Image.network(
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                    '${Constants.imagePath}${snapshot.data[itemIndex].posterPath}'
                  ),
                ),
              ),
            );
          }),
    );
  }
}
