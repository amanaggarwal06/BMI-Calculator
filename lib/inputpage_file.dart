import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'results_page.dart';
import 'bottom_button.dart';
import 'roundicon_button.dart';
import 'calculator_brain.dart';

enum Gender {
  Male, Female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 73;
  int age = 19;
  Gender ? selectedgender;
  // Color malecardcolor = inactiveCardColor;
  // Color femalecardcolor = inactiveCardColor;
  //
  // void updatecolor(Gender selectedgender){
  //   //male
  //   if(selectedgender == Gender.Male){
  //     if(malecardcolor == inactiveCardColor){
  //       malecardcolor = ActivecardColor;
  //       femalecardcolor = inactiveCardColor;
  //     }
  //     else{
  //       malecardcolor = inactiveCardColor;
  //     }
  //   }
  //   else{
  //     //female
  //     if(femalecardcolor == inactiveCardColor){
  //       femalecardcolor = ActivecardColor;
  //       malecardcolor = inactiveCardColor;
  //     }
  //     else{
  //       femalecardcolor = inactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                  onTap:(){
                    setState(() {
                      selectedgender = Gender.Male;
                    });
                  },
                  child:
                  ReusableCard(
                    colour: selectedgender == Gender.Male ? kActivecardColor : kinactiveCardColor,
                    cardchild: IconContent(
                      childicon: FontAwesomeIcons.mars, childtext: 'MALE',)
                    ,),
                )
                  ,),

                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedgender = Gender.Female;
                    });
                  },
                  child: ReusableCard(colour: selectedgender == Gender.Female ? kActivecardColor: kinactiveCardColor,
                    cardchild: IconContent(
                    childtext: 'FEMALE',
                    childicon: FontAwesomeIcons.venus,
                  ),),
                ),)
              ],
            ),),
          Expanded(child:
          ReusableCard(colour: kActivecardColor,
          cardchild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'HEIGHT'
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(height.toString(),
                  style: kNumbertextstyle,
                  ),
                  Text('cm',
                  style: kicontextstyle,),
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                  overlayColor: Color(0x29EB1555),
                  activeTrackColor: Colors.white,
                  inactiveTrackColor: Color(0xFF8D8E98),
                  thumbColor: Color(0xFFEB1555),
                ),
                child: Slider(
                  value: height.toDouble(),
                  min: 120,
                  max: 220,
                  onChanged:(double newvalue){
                    setState(() {
                      height = newvalue.round();
                    });
                  },
                ),
              )
            ],
          )
          )),
          Expanded(child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: kActivecardColor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT',
                      style: kicontextstyle,),
                      Text(weight.toString(),
                      style: kNumbertextstyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           RoundIconButton( childicon: FontAwesomeIcons.minus,
                           onpressed: (){
                             setState(() {
                               weight--;
                             });
                           },
                           ),

                          RoundIconButton( childicon:  FontAwesomeIcons.plus,
                          onpressed: (){
                            setState(() {
                              weight++;
                            });
                          },),
                        ],
                      ),

                    ],
                  ),),
                ),
                Expanded(
                  child: ReusableCard(colour: kActivecardColor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE',
                        style: kicontextstyle,),
                      Text(age.toString(),
                        style: kNumbertextstyle,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton( childicon: FontAwesomeIcons.minus,
                          onpressed: (){
                            setState(() {
                              age--;
                            });
                          },),

                          RoundIconButton( childicon:  FontAwesomeIcons.plus,
                          onpressed: (){
                            setState(() {
                              age++;
                            });
                          },),
                        ],
                      ),
                    ],
                  ),),
                )
              ],
            ),),
          Bottombutton( name: 'CALCULATE',
          onTap: (){

            CalculatorBrain calc = CalculatorBrain(weight: weight, height: height);
            Navigator.push(context, MaterialPageRoute(builder: (context){

              return ResultsPage(
                bmi: calc.givebmi(),
                comment: calc.getComment(),
                interpretetion: calc.Interpretetion(),
              );
            }),);
          },
          ),
        ],
      )
    );
  }
}


