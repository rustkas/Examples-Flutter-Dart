import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _welcomeString = '!';

  void _erase() {
    setState(() {
      _userController.clear();
      _passwordController.clear();
    });
  }

  void _showWelcome() {
    setState(() {
      if (_userController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty) {
        _welcomeString = ', {$_userController.text}';
      } else {
        _welcomeString = '!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.blueGrey,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Container(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Image.asset(
                    'images/face.png',
                    width: 90,
                    height: 90,
                    color: Colors.lightGreen,
                  ),
                  // form
                  Container(
                    height: 160,
                    width: double.infinity,
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        TextField(
                          controller: _userController,
                          decoration: InputDecoration(
                            hintText: 'Username',
                            icon: Icon(Icons.person),
                          ),
                        ),
                        TextField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            icon: Icon(Icons.lock),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.5),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 38),
                              child: RaisedButton(
                                onPressed: _showWelcome,
                                color: Colors.redAccent,
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.9,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 120),
                              child: RaisedButton(
                                onPressed: _erase,
                                color: Colors.redAccent,
                                child: Text(
                                  'Clear',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.9,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: 300,
                          maxHeight: 300,
                        ),
                        child: Text(
                          'Welcome$_welcomeString',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.4,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
