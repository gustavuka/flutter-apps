import 'package:flutter/material.dart';
import 'package:login_signup/screens/login/components/background.dart';
import 'package:login_signup/screens/login/components/login_form.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
