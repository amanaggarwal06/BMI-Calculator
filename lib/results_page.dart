import 'package:bmicalculator_project/constants.dart';
import 'package:bmicalculator_project/inputpage_file.dart';
import 'package:bmicalculator_project/reusable_card.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';
import 'calculator_brain.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({required this.bmi, required this.comment, required this.interpretetion});

  final String bmi;
  final String comment;
  final String interpretetion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child:
          Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child:
              Text('Your Result',
                style: kTitleTextstyle,
              ))
          ),
          
          Expanded(
              flex: 5,
              child: ReusableCard( colour: kActivecardColor, cardchild:
          Padding(
            padding: const EdgeInsets.all(1.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(comment.toUpperCase(), style: kSubtitleTextStyle,),
                Text(bmi, style: kBMITextStyle,),
                Text(interpretetion,
                    style: kbodyTextStyle,
                    textAlign: TextAlign.center,
                ),


              ],
            ),
          )
            ,)),
            Bottombutton(name: 'RE-CALCULATE', onTap: (){
              Navigator.pop(context);
            })
        ],
      )
    );
  }
}
