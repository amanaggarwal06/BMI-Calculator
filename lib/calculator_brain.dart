
import 'dart:math';
class CalculatorBrain{

  CalculatorBrain({required this.weight, required this.height});
  final int height;
  final int weight;

  double _bmi = 0;

  String givebmi(){
    _bmi = weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getComment(){

    if(_bmi >=25){
      return "Overweight";
    }
    else if(_bmi >= 18){
      return "Normal";
    }
    else{
      return "Underweight";
    }
  }

  String Interpretetion(){
    if(_bmi >=25){
      return "You have a higher than a normal body weight. Try exercise more!! ";
    }
    else if(_bmi >= 18){
      return "You have a normal body weight. Good job!! ";
    }
    else{
      return "You have a lower than a normal body weight, You can eat a bit more!! ";
    }

  }


}