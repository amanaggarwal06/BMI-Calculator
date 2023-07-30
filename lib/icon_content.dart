import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {

  IconContent({this.childicon, this.childtext = ''});

  final IconData ? childicon;
  final String  childtext;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon( childicon,
          size: 60.0,),
        SizedBox(
          height: 10.0,
        ),
        Text( childtext,
          style: kicontextstyle,),
      ],
    );
  }
}