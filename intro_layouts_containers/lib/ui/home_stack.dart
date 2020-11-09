import 'package:flutter/material.dart';

class HomeStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.greenAccent,
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            const Text('Hello there'),
            const Text('Hey Again!'),
            const Text('1'),
          ],
        ));
  }
}
