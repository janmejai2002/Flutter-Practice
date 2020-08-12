import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../constants.dart';
import 'results_page.dart';
import '../components/round_icon_button.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

enum Gender{
 male,
 female
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  int height = 180;
  int weight = 40;
  int age = 18;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male ?
                          kActiveCardColor : kInactiveCardColor,
                  cardChild: CardChildIcon(
                    iconChild: Icon(
                      FontAwesomeIcons.mars,
                      size: kMaleFemaleIconSize,
                    ),

                    textChild: 'MALE',

                  ),
                ),
              ),

              Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                      colour: selectedGender == Gender.female ?
                              kActiveCardColor: kInactiveCardColor,
                      cardChild: CardChildIcon(
                        iconChild: Icon(
                          FontAwesomeIcons.venus,
                          size: kMaleFemaleIconSize,
                        ),
                        textChild: 'FEMALE',
                      ),
                  ),
                ),
            ],
          )),

          Expanded(
            child: ReusableCard(
                colour: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT',
                  style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline:  TextBaseline.alphabetic,

                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),

                      Text(
                        ' cm',
                        style : kLabelTextStyle,
                      )

                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 3,
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x1FEB1555),
                      thumbColor: Color(0xFFEB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0)
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: kMinHeight,
                      max: kMaxHeight,
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue){
                        setState(() {
                          height = newValue.round();

                        });
                        },
                    ),
                  ),

                ],
            ),),
          ),

          Expanded(child:
            Row(
              children: [
              Expanded(
                  child: ReusableCard(
                    colour: kInactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('WEIGHT',
                      style: kLabelTextStyle,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        weight.toString(),
                        style: kNumberTextStyle
                      ),

                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              action: (){
                                setState(() {
                                  weight -- ;
                                });

                              }

                          ),

                          SizedBox(width: 20),


                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            action: (){
                              setState(() {
                                weight ++ ;
                              });

                            }
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              Expanded(
                child: ReusableCard(
                    colour: kInactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE',
                        style: kLabelTextStyle,
                      ),
                      SizedBox(height: 10,),
                      Text(
                          age.toString(),
                          style: kNumberTextStyle
                      ),

                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              action: (){
                                setState(() {
                                  age -- ;
                                });

                              }

                          ),

                          SizedBox(width: 20),


                          RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              action: (){
                                setState(() {
                                  age ++ ;
                                },
                                );
                              },
                          ),
                        ],
                      )
                    ],
                  ),

                ),
              ),

              ],
            ),
          ),

          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap:  () {

              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);


              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultsPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResults(),
                    interpretation: calc.getInterpretation(),
                  )));
            }
          ),
        ]
      )
    );
  }
}

