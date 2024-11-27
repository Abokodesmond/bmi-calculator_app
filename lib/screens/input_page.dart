import 'package:bmi/calculator_brain.dart';
import 'package:bmi/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_card.dart';
import '../components/icon_content.dart';
import '../constants.dart';
import '../components/botttom_botton.dart';
import '../components/round_iconbutton.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColour=inactiveCardColour;
  // Color femaleCardColour=inactiveCardColour;
  // void updateColour (Gender selectedGender){
  //   if (selectedGender==Gender.male){
  //     if (maleCardColour==inactiveCardColour){
  //       maleCardColour=activeCardColour;
  //        femaleCardColour=inactiveCardColour;
  //     }else {
  //       maleCardColour=inactiveCardColour;
  //     }
  //   } if(selectedGender==Gender.female){
  //     if (femaleCardColour==inactiveCardColour){
  //       femaleCardColour=activeCardColour;
  //        maleCardColour=inactiveCardColour;
  //     }else {
  //      femaleCardColour=inactiveCardColour;
  //     }
  //   }
  // }
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                  colour: selectedGender == Gender.male
                      ? kActiveCardColour
                      : kInactiveCardColour,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  cardChild: IconContent(
                      icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                  colour: selectedGender == Gender.female
                      ? kActiveCardColour
                      : kInactiveCardColour,
                ),
              )
            ],
          )),
          Expanded(
            child: ReusableCard(
              onPress: () {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kNumberTextStyle),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                        thumbColor: Color(0xFFEB1555),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        overlayColor: Color(0x29EB1555)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              colour: kActiveCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
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
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                    colour: kActiveCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(age.toString(),style: kNumberTextStyle,)
                        ,Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          RoundIconButton(icon: FontAwesomeIcons.minus, onPressed: (){
                            age--;
                          },),
                          SizedBox(width: 10.0),
                          RoundIconButton(icon: FontAwesomeIcons.plus, onPressed: (){setState(() {
                            age++;
                          });},),

                        ],),
                      ],
                    ),
                    colour: kActiveCardColour,
                  ),
                )
              ],
            ),
          ),
          BottomButton(
            text: 'CALCULATE',
            onTap:  (){
              CalculatorBrain calc =CalculatorBrain(height: height,weight: weight);
               
        Navigator.push(context, MaterialPageRoute(builder: (context)=>
           ResultsPage(
            bmiResult:calc.calculateBMI() ,
            resultText:calc.getResult() ,
            interpretation:calc.getIntrepretation() ,
           )
        ));
      },
          )
        ],
      ),
    );
  }
}


