import 'package:fitness/common/Color/color.dart';
// import 'package:fitness/view/on_boarding/on_boarding_view.dart';
import 'package:fitness/view/on_boarding/start_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Tcolor.primaryColor1,
        fontFamily: "Poppins",
      ),
      home: const StartScreen(),
    );
  }
}
