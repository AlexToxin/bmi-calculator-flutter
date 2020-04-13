import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  Color color;

  ReusableCard({this.color = const Color(0xFF1D1E33)});

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
