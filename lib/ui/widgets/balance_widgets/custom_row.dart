
import 'package:flutter/material.dart';
import 'package:test_app/constants/color_app.dart';
import 'package:test_app/ui/widgets/custom_text.dart';

class CustomRow extends StatelessWidget {
String? text ;
void Function()? onPressed ;
IconData? icon ;

CustomRow({this.text,this.icon,this.onPressed});
@override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: onPressed,
            icon:  Icon(
              icon,
              color: ColorApp.pinkColor,
              size: 25,
            )),
        CustomText(text: '$text', fontSize: 14)
      ],
    );
  }
}
