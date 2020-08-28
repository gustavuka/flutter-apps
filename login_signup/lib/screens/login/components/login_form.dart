import 'package:flutter/material.dart';
import 'package:login_signup/components/have_an_account_check.dart';
import 'package:login_signup/components/rounded_button.dart';
import 'package:login_signup/components/rounded_input_field.dart';
import 'package:login_signup/components/rounded_password_field.dart';
import 'package:login_signup/screens/signup/signup_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String _password;
  String _email;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Form(
      key: _formKey,
      child: Column(children: [
        Text(
          "LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: size.height * 0.03),
        SvgPicture.asset(
          "assets/icons/login.svg",
          height: size.height * 0.35,
        ),
        SizedBox(height: size.height * 0.03),
        RoundedInputField(
          hintText: "Your Email",
          onChanged: (value) {},
          onSaved: (value) {
            _email = value;
          },
        ),
        RoundedPasswordField(
          onChanged: (value) {
            _password = value;
          },
        ),
        RoundedButton(
          text: "LOGIN",
          press: () async {
            if (_formKey.currentState.validate()) {
              _formKey.currentState.save();
              final response = await http
                  .get('https://jsonplaceholder.typicode.com/albums/1');
              print(response.body);
            }
            return null;
          },
        ),
        SizedBox(height: size.height * 0.03),
        HaveAnAccountCheck(
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUpScreen();
                },
              ),
            );
          },
        )
      ]),
    );
  }
}
