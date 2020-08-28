import 'package:flutter/material.dart';
import 'package:login_signup/components/text_field_container.dart';
import 'package:login_signup/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final ValueChanged<String> onSaved;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return 'Please enter an email.';
          }
          return null;
        },
        obscureText: true,
        onSaved: onSaved,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: primaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: primaryColor,
          ),
          hintText: "Password",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
