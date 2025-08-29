import 'package:fitness/common/Color/color.dart';
import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 20,
          ),
          focusedBorder:
              // ignore: unnecessary_null_comparison
              Tcolor.primaryColor1 != null
                  ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Tcolor.primaryColor1,
                      width: 3,
                    ),
                  )
                  : null,
          hintText: "Full Name",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 18),
        ),
      ),
    );
  }
}
