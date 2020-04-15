import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  BottomButton({@required this.onPressed, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        child: Text(
          this.text,
          style: kLargeButtonTextStyle,
        ),
        onPressed: this.onPressed,
      ),
      height: 80,
      color: kAccentColor,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
    );
  }
}
