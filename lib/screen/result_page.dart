import 'package:bmi_starting/componenets/bottom_button.dart';
import 'package:bmi_starting/componenets/resuable_card.dart';
import 'package:bmi_starting/constant.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String? bmiResult, resultText, interpretation;
  ResultsPage(
      {@required this.bmiResult,
        @required this.resultText,
        @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              )),
          Expanded(
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText!.toUpperCase(), style: kResultTextStyle),
                  Text(
                    bmiResult!,
                    style: kBMITextStyle,
                  ),
                  Column(
                    children: [
                      Text(
                        'Normal BMI Range',
                        style: kGrayBodyTextStyle,
                      ),
                      Text(
                        '18.5 -25 kg/m2',
                        style: kBodyTextStyle,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      interpretation!,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            flex: 5,
          ),
          BottomButton(
            title: 'Re_CALCULATE',
            onTab: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
