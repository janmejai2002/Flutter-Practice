import 'package:flutter/material.dart';
import '../constants.dart';


class CardChildIcon extends StatelessWidget {

  CardChildIcon({@required this.iconChild, @required this.textChild});

  final Icon iconChild;
  final String textChild;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        iconChild,

        SizedBox(
          height: 15.0,
        ),

        Text(
            textChild,
            style: kLabelTextStyle,
        ),
      ],
    );
  }
}
