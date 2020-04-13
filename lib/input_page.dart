import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_card_widget.dart';

const cardColor = Color(0xFF1D1E33);
const secondaryColor = Color(0xFFEB1555);

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
                ReusableCard(
                  color: cardColor,
                  child: IconCardWidget(
                    icon: FontAwesomeIcons.mars,
                    text: 'MALE',
                  ),
                ),
                ReusableCard(
                  color: cardColor,
                  child: IconCardWidget(
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE',
                  ),
                ),
              ],
            ),
          ),
          ReusableCard(
            color: cardColor,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  color: cardColor,
                ),
                ReusableCard(
                  color: cardColor,
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            color: secondaryColor,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
          )
        ],
      ),
    );
  }
}
