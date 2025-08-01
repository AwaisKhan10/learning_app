// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:app/core/constant/colors.dart';
import 'package:app/core/constant/text_style.dart';
import 'package:app/core/model/container_model.dart';
import 'package:app/ui/custom_widgets/buttons/custom_button.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  List<ContainerModel> list = [
    ContainerModel(
      imgUrl:
          "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg",
      text: "Continue",
    ),
    ContainerModel(imgUrl: '', text: 'Continue'),
    ContainerModel(),
  ];
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
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),

        child: Column(
          children: [
            SizedBox(height: 40),

            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return CustomButton(containerModel: list[index]);
                },
              ),
            ),

            // GridView.builder(
            //   physics: NeverScrollableScrollPhysics(),
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     mainAxisSpacing: 10,
            //     crossAxisSpacing: 10,
            //     crossAxisCount: 2,
            //   ),

            //   shrinkWrap: true,
            //   itemCount: 10,
            //   itemBuilder: (context, index) {
            //     return CustomButton(
            //       text: 'Continue',
            //       imgUrl:
            //           "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg",
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
