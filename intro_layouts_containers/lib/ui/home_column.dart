import 'package:flutter/material.dart';

class HomeColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'First Item',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            'Second Item',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          Container(
            color: Colors.deepOrange.shade50,
            alignment: Alignment.bottomRight,
            child: Text(
              'Third Item',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
      // child: Text(
      //   'Hello Container',
      //   style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
      // ),
    );
  }
}
