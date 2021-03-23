import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result",
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Normal",
                      style: kResultTextStyle,
                    ),
                    Text(
                      "18.3",
                      style: kBMITextStyle,
                    ),
                    Text(
                      "Your BMI result is quite low, you should eat more!",
                      textAlign: TextAlign.center,
                      style: kBodyStyle,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
                onTap: (){
                  Navigator.pop(context);
                },
                buttonTitle: "RE-CALCULATE"
            ),
          ],
        ),
      ),
    );
  }
}