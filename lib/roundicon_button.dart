import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({ required this.childicon,required this.onpressed});

  final IconData childicon ;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(

      child: Icon(
        childicon,
      ),

      elevation: 10.0 ,
      fillColor: Color(0xFF4C4F5E),
      constraints: const BoxConstraints(minWidth: 56.0, minHeight: 41.0) ,
      shape: CircleBorder(),
      onPressed: onpressed,



    );
  }
}