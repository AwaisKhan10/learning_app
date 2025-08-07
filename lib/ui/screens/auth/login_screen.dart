// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use

import 'package:app/core/constant/colors.dart';
import 'package:app/core/constant/text_style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///
      /// App Bar
      ///
      appBar: AppBar(
        leading: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 5,
                spreadRadius: -1,
                color: Color(0xff007F5F80),
              ),
            ],
          ),
          child: Center(child: Icon(Icons.arrow_back, color: blackColor)),
        ),
      ),

      ///
      /// Start Body
      ///
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Center(
              child: Image.asset("assets/static_assets/app_logo.png", scale: 4),
            ),
            SizedBox(height: 40),
            Text(
              "Welcome Back 👋",
              style: style24B.copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Username",
                style: style14M.copyWith(
                  fontWeight: FontWeight.w500,
                  color: inputTitleColor,
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(5),
                prefixIcon: Image.asset(
                  "assets/icons_assets/user_name.png",
                  scale: 3,
                ),

                hintText: "Email",
                // helperText: "Email",
                // labelText: "Email",

                ///
                /// Boder AREA
                ///
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(width: 1, color: borderColor),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(width: 1, color: borderColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(width: 1, color: borderColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(width: 1, color: borderColor),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(width: 1, color: borderColor),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, top: 30),
              child: Text(
                "Password",
                style: style14M.copyWith(
                  fontWeight: FontWeight.w500,
                  color: inputTitleColor,
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(5),
                suffixIcon: Icon(Icons.visibility_off),
                hintText: "Password",
                // helperText: "Password",
                // labelText: "Password",

                ///
                /// Boder AREA
                ///
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(width: 1, color: borderColor),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(width: 1, color: borderColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(width: 1, color: borderColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(width: 1, color: borderColor),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(width: 1, color: borderColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
