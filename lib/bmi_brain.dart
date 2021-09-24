import 'dart:math';



class CalculatorBrain{
  CalculatorBrain({this.heights,this.weight});
  final int heights;
  final int weight;
  double _bmi;
  String CalcualteBrain(){
     _bmi = weight/pow(heights/100, 2);
    return _bmi.toStringAsFixed(1);
  }


  String getBMI(){
    if(_bmi>=25){
      return 'Overweight';
    }else if(_bmi>18.5){
      return 'Normal';

    }else{
      return 'BSDK';
    }
  }

  String getInterpretation(){
    if(_bmi>=25){
      return 'You have a higher than normal body weight. Try exercise more.';
    }else if(_bmi>18.5){
      return 'You have a normal body weight. Good job!';

    }else if (_bmi<18){
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  }

