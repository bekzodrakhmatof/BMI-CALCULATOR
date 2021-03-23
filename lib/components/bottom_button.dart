import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}