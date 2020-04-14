import 'package:flutter/material.dart';

import 'constants.dart';

class IconCardWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  IconCardWidget({@required this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          this.text,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
