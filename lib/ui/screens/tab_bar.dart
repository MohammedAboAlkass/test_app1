import 'package:flutter/material.dart';
import 'package:test_app/constants/color_app.dart';
import 'package:test_app/ui/screens/balance_screen.dart';
import 'package:test_app/ui/widgets/custom_text.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  List<Widget> screensTab = [Text('mohammed'), Text('mohammed')];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: CustomText(text: 'Wallet',fontSize: 16,color: ColorApp.blackColor,),
          centerTitle: true,
          leading:const Icon(Icons.arrow_back_ios,color: ColorApp.blackColor,),
          elevation: 0,
          backgroundColor: Colors.transparent,
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.red,
            indicatorWeight: 3,
            indicatorSize:TabBarIndicatorSize.label ,
            tabs: [
              Tab(child: CustomText(text: 'Balance and expenses',color: Colors.black),),
              Tab(child: CustomText(text: 'Cash back',color: Colors.black),),
              Tab(child: CustomText(text: 'Earning',color: Colors.black),),
            ],
          ),
        ),
        body: TabBarView(
            children: [
        const  BalanceScreen(),
          Container(),
          Container(),
        ]),
      ),
    );
  }
}
// TabBarView(children: [
// BalanceScreen(),
// BalanceScreen(),
//
// ])
