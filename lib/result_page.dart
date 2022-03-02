import 'package:flutter/material.dart';
import 'package:testing_mood/ReUseable_card.dart';
import 'package:testing_mood/constant.dart';
import 'package:testing_mood/main.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult,this.resultText,this.interpretation});
  final String bmiResult;
  final String ?resultText;
  final String ?interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        backgroundColor:Color(0xFF1D1E33),
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child:Container(
                child: Center(
                  child: Text(
                      'Your result',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow[900],
                    ),

                  ),
                ),
              )
          ),
          Expanded(
            flex: 5,
              child: ReusableWidget(
                colour: KActiveCardColor,
                cardWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        resultText.toString(),
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.yellowAccent,
                      ),
                    ),
                    Text(
                      bmiResult,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                        interpretation.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),

              )
          ),
          ButtonButtom(
            buttonTitle: 'RECALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
