// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use

import 'package:app/core/constant/auth_field_decoration.dart';
import 'package:app/core/constant/colors.dart';
import 'package:app/core/constant/text_style.dart';
import 'package:app/ui/custom_widgets/buttons/custom_button.dart';
import 'package:app/ui/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSelect = false;

  onClick() {
    setState(() {
      isSelect = !isSelect;
    });
  }

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

            ///
            /// User Name Field
            ///
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
              decoration: authFieldDecoration.copyWith(
                hintText: "Username",
                prefixIcon: Image.asset(
                  "assets/icons_assets/user_name.png",
                  scale: 3,
                ),
              ),
            ),

            ///
            /// Password Field
            ///
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
              obscureText: isSelect ? false : true,
              decoration: authFieldDecoration.copyWith(
                hintText: "Password",
                suffixIcon: GestureDetector(
                  onTap: () {
                    onClick();
                  },
                  child: isSelect
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off),
                ),
                prefixIcon: Icon(Icons.key_outlined),
              ),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text("Login"),
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Donot Have an account?", style: style16B),
                    TextSpan(
                      text: "Login",
                      style: style16B.copyWith(color: blueColor),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
