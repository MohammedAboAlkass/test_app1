
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  String? text ;
  double? fontSize ;
  Color? color ;
  FontWeight? fontWeight;
  double? letterSpacing ;
  double? wordSpacing ;
  String? fontFamily ;
  CustomText({this.wordSpacing,this.letterSpacing,this.fontWeight,this.color,this.fontSize,this.fontFamily,this.text});

  @override
  Widget build(BuildContext context) {
    return Text('$text',style: TextStyle(
        fontSize: fontSize,
        color: color,
      fontWeight:fontWeight ,
      letterSpacing:letterSpacing ,
      wordSpacing:wordSpacing ,
      fontFamily: fontFamily,

    ),);
  }
}
