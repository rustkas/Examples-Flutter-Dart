import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  _MakeItRainState createState() => _MakeItRainState();
}

class _MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 0;

  void _rainMoney() {
    setState(() {
      _moneyCounter += 100;

      if (_moneyCounter >= 10000) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make It Rain!'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Get Rich!',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 29.9),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                _moneyCounter == 0 ? 'Money!' : '\$$_moneyCounter',
                style: TextStyle(
                  color:
                      _moneyCounter >= 1000 ? Colors.red : Colors.greenAccent,
                  fontSize: 46.9,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: FlatButton(
                color: Colors.lightGreen,
                child: Text(
                  'Lest It Rain!',
                  style: TextStyle(
                    fontSize: 19.9,
                  ),
                ),
                onPressed: _rainMoney,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
