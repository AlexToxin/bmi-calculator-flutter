import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;

  ReusableCard({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
