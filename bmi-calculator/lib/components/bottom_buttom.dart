import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButtom extends StatelessWidget {
  final Function onTap;
  final String buttomTitle;

  const BottomButtom({@required this.onTap, @required this.buttomTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttomTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBbottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        // padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kBottomHeight,
      ),
    );
  }
}
