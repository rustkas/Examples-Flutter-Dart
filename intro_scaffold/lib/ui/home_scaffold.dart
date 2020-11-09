import 'package:flutter/material.dart';

void _onPress() {
  print('Search Tapped!');
}

class HomeScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.shade700,
        title: Text('Fancy Day'),
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () => debugPrint('Icon Tapped!'),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: _onPress,
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bonni',
              style: TextStyle(
                fontSize: 14.5,
                fontWeight: FontWeight.w400,
                color: Colors.deepOrange,
              ),
            ),
            InkWell(
              child: Text('Button!'),
              onTap: () {
                debugPrint('Button Tapped!');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        tooltip: 'Going Up!',
        child: Icon(Icons.call_missed),
        onPressed: () => debugPrint('Pressed!'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.print),
            label: 'Nope',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_missed),
            label: 'Hello',
          ),
        ],
        onTap: (int i) => debugPrint('Hey Touched $i'),
      ),
    );
  }
}
