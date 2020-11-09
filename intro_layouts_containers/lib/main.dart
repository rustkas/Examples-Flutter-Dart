import 'package:flutter/material.dart';
import 'ui/home_stack.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MaterialApp(
    theme: ThemeData(
      backgroundColor: Colors.black,
    ),
    color: Colors.greenAccent,
    title: 'Layouts',
    home: HomeStack(),
  ));
}
