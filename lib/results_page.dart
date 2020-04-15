import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('BMI CALCULATOR'),
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                  child: Center(
                    child: Text(
                      'Your result',
                      style: kMainItemTextStyle,
                    ),
                  )),
              Expanded(
                flex: 7,
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: ReusableCard(
                    color: kActiveCardColor,
                    child: Padding(
                      padding: const EdgeInsets.all(45),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            child: Center(
                              child: Text(
                                'NORMAL',
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: Text(
                                '22.1',
                                style: kMainItemTextStyle.copyWith(
                                  fontSize: 100,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'Normal BMI range:',
                                style: kLabelTextStyle,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                '18,5 - 25 kg/m2',
                                style: kDefaultSecondPageTextStyle,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'You have a normal body weight. Good job!',
                                style: kDefaultSecondPageTextStyle,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 45.0),
                              child: RawMaterialButton(
                                fillColor: kInactiveCardColor,
                                onPressed: () {},
                                elevation: 0,
                                child: Text('SAVE RESULT'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: RawMaterialButton(
                  child: Text(
                    'RE-CALCULATE YOUR BMI',
                    style: kLargeButtonTextStyle,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                height: 80,
                color: kAccentColor,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
              )
            ],
          )),
    );
  }
}
