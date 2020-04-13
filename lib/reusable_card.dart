import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;

  ReusableCard({@required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: this.child,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
