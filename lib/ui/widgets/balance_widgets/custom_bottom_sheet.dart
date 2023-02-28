import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/constants/color_app.dart';
import 'package:test_app/ui/widgets/balance_widgets/custom_row_bottom_sheet.dart';
import 'package:test_app/ui/widgets/custom_text.dart';

class Custom_bottom_sheet extends StatelessWidget {
  const Custom_bottom_sheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
      height: 465,
      decoration: const BoxDecoration(
          color: ColorApp.whiteColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10))),
      child: Column(
        children: [
          Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                  child: SvgPicture.asset('assets/images/x.svg'))),
          Row(
            children: [
              const Icon(
                Icons.save,
                color: ColorApp.pinkColor,
              ),
              const Spacer(),
              CustomText(text: 'Order details ', fontSize: 16),
              const Spacer(),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Custom_row_bottom_sheet(
            text1: 'Order No.',
            text2: '#26542',
            color2: ColorApp.pinkColor,
            fontWeight2: FontWeight.bold,
          ),
          const Divider(
            height: 20,
          ),
          Custom_row_bottom_sheet(
            text1: 'Paying Date',
            text2: '23-02-2023',
            color2: ColorApp.greyColor2,
          ),
          const Divider(
            height: 20,
          ),
          Custom_row_bottom_sheet(
            text1: 'Credit Card',
            text2: '*******254',
            color2: ColorApp.greyColor2,
          ),
          const Divider(
            height: 20,
          ),
          Custom_row_bottom_sheet(
            text1: 'Shop Name',
            text2: 'Abdallah Ahmed',
            color2: ColorApp.greyColor2,
          ),
          Container(
            margin:const EdgeInsets.only(top: 20),
            padding:const EdgeInsets.all(15),
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: ColorApp.greyColor),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'cost',
                    ),
                    CustomText(
                      text: '\$524',
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    CustomText(
                      text: 'VAT',
                    ),
                    CustomText(text: '(30%)', color: ColorApp.pinkColor),
                    const Spacer(),
                    CustomText(
                      text: '\$276',
                    ),
                  ],
                ),
               const Divider(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: 'Total:', fontWeight: FontWeight.bold),
                    CustomText(
                      text: '\$800',
                      color: ColorApp.pinkColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            ),
          ),
        const  SizedBox(
            height: 35,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: CustomText(
                text: 'Order details',
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorApp.pinkColor,
                  fixedSize:const Size.fromHeight(40)),
            ),
          )
        ],
      ),
    );
  }
}
