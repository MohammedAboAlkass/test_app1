
import 'package:flutter/material.dart';
import 'package:test_app/constants/color_app.dart';
import 'package:test_app/ui/widgets/custom_text.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 36,
        width: 36,
        child: Image.asset('assets/images/person.png'),
      ),
      title: Text('Abdallah Omran store'),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomText(
            text: '- 45.00 SR',
            color: ColorApp.redColor2,
          ),
          CustomText(
            text: '22-03-2023',
            color: ColorApp.greyColor2,
          )
        ],
      ),
      subtitle: CustomText(text: 'Purchase process'),
    );
  }
}
