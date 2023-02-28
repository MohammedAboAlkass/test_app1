import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/constants/color_app.dart';
import 'package:test_app/ui/screens/balance_screen.dart';
import 'package:test_app/ui/screens/tab_bar.dart';

void main() => runApp(const MainScreen());

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child)=> const MaterialApp(
        home:TabBarScreen(),
      ),
    );
  }
}
