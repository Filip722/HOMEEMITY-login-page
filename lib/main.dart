import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HOMEEMITY Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var decoratedBox = DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: LoginBox());
    return decoratedBox;
  }
}

class LoginBox extends StatelessWidget {
  const LoginBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: new BoxConstraints(
          minHeight: 200.0,
          minWidth: 150.0,
          maxHeight: 500.0,
          maxWidth: 400.0,
        ),
        child: Container(
          decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.all(const Radius.circular(20.0))),
          child: Center(
            child: Text('Test'),
          ),
        ),
      ),
    );
  }
}
