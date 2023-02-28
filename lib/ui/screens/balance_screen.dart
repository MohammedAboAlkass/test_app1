import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/constants/color_app.dart';
import 'package:test_app/ui/widgets/balance_widgets/custom_bottom_sheet.dart';
import 'package:test_app/ui/widgets/balance_widgets/custom_card.dart';
import 'package:test_app/ui/widgets/balance_widgets/custom_row.dart';
import 'package:test_app/ui/widgets/balance_widgets/custom_text_tile.dart';
import 'package:test_app/ui/widgets/custom_text.dart';

class BalanceScreen extends StatefulWidget {
  const BalanceScreen({Key? key}) : super(key: key);
  @override
  State<BalanceScreen> createState() => _BalanceScreenState();
}
class _BalanceScreenState extends State<BalanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 0),
            child: Column(
              children: [
                const Custom_card(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRow(
                        text: 'Withdraw',
                        onPressed: () {},
                        icon: Icons.file_download_outlined),
                    CustomRow(
                        text: 'Recharge balance',
                        onPressed: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (con) => Custom_bottom_sheet(),
                              backgroundColor: Colors.transparent);
                        },
                        icon: Icons.add_box_outlined),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            color: ColorApp.greyColor,
            thickness: 7,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'My transaction ',
                    ),
                    SvgPicture.asset('assets/images/icon1.svg')
                  ],
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 410,
                  child: ListView.separated(
                      itemBuilder: (con, index) {
                        return CustomListTile();
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 16,
                        );
                      },
                      itemCount: 10),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
