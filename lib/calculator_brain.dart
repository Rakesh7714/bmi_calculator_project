import 'package:flutter/material.dart';
import 'dart:math';
class CalculatorBrain{
  CalculatorBrain({this.height,this.weight});
  final height;
  final weight;
  double ?_bmi;
  String calculateBMI(){
     _bmi=weight/pow(height/100, 2);
    return _bmi!.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi!>=25){
      return 'Overweight';
    }else if(_bmi!>18.5){
      return 'Normal';
    }else{
      return "underweight";
    }
  }
  String getInterpretation(){
    if(_bmi!>=25){
      return 'Ow! You have higher weight try to do excercise day to day';
    }else if(_bmi!>18.5){
      return 'Congratulation you have normal body weight';
    }else{
      return "Hey Dude just eat a more you have lower than normal body weight";
    }
  }

}