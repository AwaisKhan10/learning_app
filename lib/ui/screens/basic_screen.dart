// ignore_for_file: use_key_in_widget_constructors

import 'package:app/core/constant/colors.dart';
import 'package:app/core/constant/text_style.dart';
import 'package:app/ui/custom_widgets/buttons/custom_button.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Text("hello flutter", style: style12B)],
        title: Text(
          "Talha Mansoor",
          style: style16.copyWith(color: whiteColor),
        ),
        centerTitle: true,
        backgroundColor: blackColor,
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          CustomButton(
            text: 'Continue',
            imgUrl:
                "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg",
          ),
          CustomButton(textColor: redColor, text: 'SignUp'),
          CustomButton(boxColor: greenColor, text: 'SignIn'),
          CustomButton(borderRadius: 40, text: "ForgotPassword"),
        ],
      ),
    );
  }
}
