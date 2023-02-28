
import 'package:flutter/material.dart';
import 'package:test_app/constants/color_app.dart';
import 'package:test_app/ui/widgets/custom_text.dart';

class Custom_card extends StatelessWidget {
  const Custom_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 20),
      height: 120,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: ColorApp.pinkColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
            image: AssetImage('assets/images/shape1.png'),
            fit: BoxFit.cover,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomText(
            text: 'Current wallet balance',
            color: ColorApp.whiteColor,
            fontSize: 14,
          ),
          CustomText(
              text: '2512.21 SR',
              color: ColorApp.whiteColor,
              fontSize: 17),
        ],
      ),
    );
  }
}
