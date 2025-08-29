// import 'package:fitness/common/Color/color.dart';
import 'package:fitness/common/Color/color.dart';
import 'package:fitness/common_widget/textField_widget.dart';
import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/Untitled-1.jpg",
                width: media.width,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(height: 20),
              Text(
                "Create your account now",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                // padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextfieldWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
