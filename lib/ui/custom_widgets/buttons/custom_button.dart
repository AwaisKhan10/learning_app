// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:app/core/constant/colors.dart';
import 'package:app/core/constant/text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String? text;
  Color? boxColor;
  Color? textColor;
  double? borderRadius;
  String? imgUrl;

  CustomButton({
    this.text,
    this.boxColor,
    this.textColor,
    this.borderRadius,
    this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      margin: EdgeInsets.all(16),
      height: 54,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imgUrl ?? ""),
          fit: BoxFit.cover,
        ),
        color: boxColor ?? blackColor,
        borderRadius: BorderRadius.circular(borderRadius ?? 16),
      ),
      child: Text(
        text ?? "",
        style: style16B.copyWith(color: textColor ?? whiteColor),
      ),
    );
  }
}
