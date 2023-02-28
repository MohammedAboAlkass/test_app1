
import 'package:flutter/material.dart';
import 'package:test_app/constants/color_app.dart';
import 'package:test_app/ui/widgets/custom_text.dart';

class Custom_row_bottom_sheet extends StatelessWidget {
String? text1 ;
String? text2 ;

FontWeight? fontWeight2 ;

Color? color2 ;
Custom_row_bottom_sheet({this.color2,this.fontWeight2,this.text1,this.text2});
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CustomText(text: '$text1',fontSize: 16,color:ColorApp.blackColor ,),
      Spacer(),
      CustomText(text:'$text2',fontSize: 14,fontWeight: fontWeight2,color: color2),
      Spacer(),
    ],);
  }
}
