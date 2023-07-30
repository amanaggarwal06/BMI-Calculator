import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({ required this.colour , this.cardchild });

  final Color? colour;
  final Widget? cardchild;
  // final Function onpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,

      ),
    );
  }
}