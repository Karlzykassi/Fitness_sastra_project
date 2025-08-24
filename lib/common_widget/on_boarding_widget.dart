import 'package:fitness/common/Color/color.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  final Map dObj;
  const OnBoardingPage({super.key, required this.dObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SizedBox(
      width: media.width,
      height: media.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(height: 50, color: Tcolor.onboardColor),
              Image.asset(
                dObj["img"].toString(),
                width: media.width,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              dObj["title"].toString(),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              dObj["subtitle"].toString(),
              style: TextStyle(
                fontSize: 14,
                color: const Color.fromARGB(255, 135, 135, 135),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
