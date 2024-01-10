import 'package:flutter/material.dart';
import 'package:movie/homescreen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:Colors.black,
        // useMaterial3: true
      ),
      home: const MyApp(),
    )
  );
}


