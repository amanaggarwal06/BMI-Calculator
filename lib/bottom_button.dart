import 'package:flutter/material.dart';
import 'constants.dart';

class Bottombutton extends StatelessWidget {

  Bottombutton({required this.name, required this.onTap});

  final VoidCallback onTap;
  final String name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child:
        Center(
          child: Text(name,
              style: kLargeBottomstyle),
        ),
        color:  kbottomcontainerColor,
        width: double.infinity,
        height: kbottomcontainerHeight,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}