import 'package:flutter/material.dart';

class HomeRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Item 1',
            style: TextStyle(fontSize: 12.9),
          ),
          Text(
            'Item 2',
            style: TextStyle(fontSize: 12.9),
          ),
          Text(
            'Item 3',
            style: TextStyle(fontSize: 12.9),
          ),
          Text(
            'Item 4',
            style: TextStyle(fontSize: 12.9),
          ),
          const Expanded(
            child: const Text(
              'Item 4',
              //style: TextStyle(fontSize: 12.9),
            ),
          ),
        ],
      ),
    );
  }
}
