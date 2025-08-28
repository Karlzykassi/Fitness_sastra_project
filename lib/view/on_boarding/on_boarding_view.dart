import 'package:fitness/common/Color/color.dart';
import 'package:fitness/common_widget/on_boarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:fitness/view/login/signUp_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int selectedPage = 0;
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        selectedPage = controller.page?.round() ?? 0;
      });
    });
  }

  List pageArr = [
    {
      "title": "Welcome to Fitness App",
      "img": "assets/img/on_1.png",
      "subtitle":
          "lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    },
    {
      "title": "Control your diet",
      "img": "assets/img/on_2.png",
      "subtitle":
          "lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    },
    {
      "title": "Put yourself in action",
      "img": "assets/img/on_3.png",
      "subtitle":
          "lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    },
    {
      "title": "Achieve Your Goals",
      "img": "assets/img/on_4.png",
      "subtitle":
          "lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          // PageView
          PageView.builder(
            controller: controller,
            itemCount: pageArr.length,
            itemBuilder: (context, index) {
              var dObj = pageArr[index] as Map? ?? {};
              return OnBoardingPage(dObj: dObj);
            },
          ),

          // Progress + Button
          SizedBox(
            width: double.infinity,
            height: 150,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Progress Bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(pageArr.length, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      width: 20,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color:
                            index == selectedPage
                                ? Tcolor.onboardColor
                                : Colors.grey,
                      ),
                    );
                  }),
                ),

                // Next Button
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 30,
                    ),
                    width: 100,
                    decoration: BoxDecoration(
                      color: Tcolor.onboardColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.navigate_next,
                        size: 40,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        if (selectedPage < pageArr.length - 1) {
                          controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupView(),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
