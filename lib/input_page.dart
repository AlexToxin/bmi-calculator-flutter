import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(),
                ReusableCard(),
              ],
            ),
          ),
          ReusableCard(),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(),
                ReusableCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
