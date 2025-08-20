// ignore_for_file: deprecated_member_use

import 'package:app/core/constant/colors.dart';
import 'package:app/core/constant/text_style.dart';
import 'package:flutter/material.dart';

class DiscountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(flexibleSpace: Stack(children: [

      ],)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 30,
              itemBuilder: (BuildContext context, int index) {
                return DicountOffers();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DicountOffers extends StatelessWidget {
  const DicountOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 180,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffDE6060), Color(0xffB10E0E)],
        ),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(width: 0.75, color: blackColor),
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.19),
            offset: Offset(0, 10),
            blurRadius: 20,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "All the restaurants",
                  style: style16B.copyWith(color: whiteColor),
                ),
                Text("Discount", style: style18M.copyWith(color: whiteColor)),
                Text(
                  "Offers",
                  style: style18M.copyWith(color: whiteColor, fontSize: 42),
                ),
              ],
            ),
          ),

          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(14),
            child: Image.asset("assets/static_assets/offer.png"),
          ),
        ],
      ),
    );
  }
}
