// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:app/core/constant/colors.dart';
import 'package:app/core/constant/text_style.dart';
import 'package:app/core/model/container_model.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  ContainerModel? containerModel = ContainerModel();

  CustomButton({this.containerModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      margin: EdgeInsets.all(16),

      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(containerModel!.imgUrl ?? ""),
          fit: BoxFit.cover,
        ),
        color: containerModel!.boxColor ?? blackColor,
        borderRadius: BorderRadius.circular(containerModel!.borderRadius ?? 16),
      ),
      child: Text(
        containerModel!.text ?? "",
        style: style16B.copyWith(
          color: containerModel!.textColor ?? whiteColor,
        ),
      ),
    );
  }
}
