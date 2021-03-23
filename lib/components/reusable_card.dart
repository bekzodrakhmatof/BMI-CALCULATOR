import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({@required this.color, this.cardChild, this.onPress});
  final Color color;
  final Widget cardChild;
  Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          child: cardChild,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );
  }
}