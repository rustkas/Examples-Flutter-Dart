import 'package:flutter/material.dart';
import 'ui/home_gesture_detector.dart';

void main() {
  var title = 'Guesture';
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    home: HomeGestureDetector(
      title: title,
    ),
  ));
}
