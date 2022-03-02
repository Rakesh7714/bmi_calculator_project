import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testing_mood/result_page.dart';
import 'ReUseable_card.dart';
import 'icon_content.dart';
import 'constant.dart';
import 'result_page.dart';
import 'calculator_brain.dart';
enum Gender{
  male,
  female,
}

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: CardTest(),
    );
  }
}

class CardTest extends StatefulWidget {
  const CardTest({Key? key}) : super(key: key);

  @override
  _CardTestState createState() => _CardTestState();
}

class _CardTestState extends State<CardTest> {
   Gender ?selectedGender;
   int height=80;
   int weight=60;
   int age=22;
  // Color maleCardColour=inactiveCardColor;
  // Color femaleCardColour=inactiveCardColor;
  //Here we can assume that 1 is the male and 2 is the female
  // void updateColour(Gender genderSelected){
  //   if(genderSelected==Gender.male){
  //     if(maleCardColour==inactiveCardColor){
  //       maleCardColour=activeCardColor;
  //       femaleCardColour=inactiveCardColor;
  //     }
  //     else{
  //       maleCardColour=inactiveCardColor;
  //     }
  //   }
  //   if(genderSelected==Gender.female){
  //     if(femaleCardColour==inactiveCardColor){
  //       femaleCardColour=activeCardColor;
  //       maleCardColour=inactiveCardColor;
  //     }
  //     else{
  //       femaleCardColour=inactiveCardColor;
  //     }
  //   }
   //  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
          centerTitle: true,
          backgroundColor: Color(0xFF1D1E33),
        ),
        backgroundColor: Color(0xFF1D1E33),
        body:Column(
          children: [
            Expanded(child: Row(
              children: [
                Expanded(
                    child:ReusableWidget(
                      onPress: (){
                        setState(() {
                          selectedGender=Gender.male;
                        });
                      },
                      colour:selectedGender== Gender.male?KActiveCardColor:KInactiveCardColor,
                      cardWidget: IconContent(icon: FontAwesomeIcons.male,label: "Male"),

                    ),
                ),
                Expanded(
                    child: ReusableWidget(
                      onPress: (){
                        setState(() {
                          selectedGender=Gender.female;

                        });
                      },
                      colour:selectedGender==Gender.female?KActiveCardColor:KInactiveCardColor,
                      cardWidget: IconContent(icon: FontAwesomeIcons.female,label: "Female"),
                    ),
                ),
              ],
            ),),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableWidget(
                        colour:KActiveCardColor,
                        cardWidget:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "HEIGHT",
                            style:KLabelTextStyle),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                    height.toString(),
                                  style:KNumberTextStyle,
                                ),
                                Text(
                                    'M',
                                  style: KLabelTextStyle,
                                ),
                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbColor: Colors.teal,
                                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                                overlayShape: RoundSliderOverlayShape(overlayRadius: 26.0),
                              ),
                              child: Slider(
                                  value: height.toDouble(),
                                  max: 500.0,
                                  min: 80.0,
                                  activeColor: Colors.blue,
                                  inactiveColor: Colors.white,
                                  onChanged: (double newValue){
                                    setState(() {
                                      height=newValue.round();
                                    });
                                  },
                              ),
                            )
                          ],
                        ),
                      ),
                  ),
                ],

            ),
            ),
            Expanded(child: Row(
              children: [
                Expanded(
                  child:ReusableWidget(
                    colour:KActiveCardColor,
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: KLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: KNumberTextStyle,
                            ),
                            Text(
                                'KG',
                              style:KLabelTextStyle,
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                              onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                              },
                            ),
                            SizedBox(
                              width: 10.0,

                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                              onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableWidget(
                    colour:KActiveCardColor,
                    cardWidget:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: KLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              age.toString(),
                              style: KNumberTextStyle,
                            ),
                            Text(
                              'Yrs',
                              style:KLabelTextStyle,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                              onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },),
                            SizedBox(
                              width: 10.0,

                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ),
            ButtonButtom(
              buttonTitle: 'CALCULATE',onTap: (){
                CalculatorBrain calc=CalculatorBrain(height: height,weight:weight);
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ResultPage(
                  bmiResult:calc.calculateBMI(),
                  resultText:calc.getResult(),
                  interpretation:calc.getInterpretation(),
              )));
            },
            ),

              ],

            ),
      ),

    );

  }
}

class ButtonButtom extends StatelessWidget {
  ButtonButtom({required this.onTap,this.buttonTitle});
  final VoidCallback onTap;
  final String ?buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        child: Center(
          child: Text(
            buttonTitle.toString(),
            style: KBottomTextStyle,
          ),
        ),
        color: Colors.grey,
        height: KContainerBottomHeight,
        width: double.infinity,
      ),
    );
  }
}
class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon,@required this.onPressed});
  final IconData ?icon;
  final VoidCallback ?onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
        onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
          width: 36.0,height: 36.0
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}



