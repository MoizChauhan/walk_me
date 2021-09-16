import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:walk_me/Screen/loginScreen.dart';
import 'package:walk_me/Screen/signUpScreen.dart';
import 'package:walk_me/Utils/color.dart';
import 'package:walk_me/Utils/images.dart';
import 'package:walk_me/Utils/string.dart';
import 'package:walk_me/Widgets/Custombutton.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 250,
            ),
            Image.asset(Images.logo),
            SizedBox(
              height: 150,
            ),
            CustomButton(
                title: register,
                left: 70,
                right: 70,
                onTap: () {
                  Get.to(RegisterScreen());
                },
                color: redButtonColor),
            SizedBox(
              height: 20,
            ),
            CustomButton(
                title: alreadyAccount,
                left: 70,
                right: 70,
                onTap: () {
                  Get.to(LoginScreen());
                },
                color: blueButtonColor),
          ],
        ),
      ),
    );
  }
}
