import 'package:flutter/material.dart';

class HomeGestureDetector extends StatelessWidget {
  final title;

  HomeGestureDetector({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: CustomButton(),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text('Hello Gestures!'),
          backgroundColor: Theme.of(context).backgroundColor,
          duration: Duration(seconds: 5),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(5.5),
        ),
        child: Text('First Button!'),
      ),
    );
  }
}
