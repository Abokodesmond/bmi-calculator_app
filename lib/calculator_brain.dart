

import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;


  double _bmi;
  CalculatorBrain({required this.height,required this.weight, }):_bmi=0;
   String calculateBMI(){
    double _bmi =weight/pow(height/100,2 );
     return _bmi.toStringAsFixed(1);
   }
   String getResult(){
    if (_bmi>=25){
      return'overweight';
    }else if (_bmi>18.5){
      return 'normal';

    }else{
       return 'underweight';
    }
   }
   String getIntrepretation(){
   if (_bmi>=25){
      return'you have a higher than normal body weight.Try to exercise more.';
    }else if (_bmi>18.5){
      return 'You have a normal body weight.Good Job!';

    }else{
       return 'You have a lower than normal body weight.You can eat a bit more.';
    }
   }
}