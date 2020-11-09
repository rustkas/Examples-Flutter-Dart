import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Center(
        child: Text(
          'Welcome Home!',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            fontSize: 34.4,
          ),
        ),
      ),
    );
  }
}
