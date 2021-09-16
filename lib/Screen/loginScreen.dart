import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:walk_me/Screen/forgetPasswordScreen.dart';
import 'package:walk_me/Screen/signUpScreen.dart';
import 'package:walk_me/Utils/color.dart';
import 'package:walk_me/Utils/images.dart';
import 'package:walk_me/Utils/string.dart';
import 'package:walk_me/Widgets/Custombutton.dart';
import 'package:walk_me/Widgets/sizeBoxes.dart';
import 'package:walk_me/Widgets/textfieldName.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 40,
                          color: textColor,
                        )),
                  ),
                  Flexible(
                    child: Image.asset(
                      Images.logo,
                      // width: Get.width / 1.3,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  loginToAcc,
                  style: TextStyle(color: textColor, fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              heightBox(20),
              textFieldName(
                text: userName,
                inputType: TextInputType.name,
              ),
              heightBox(10),
              textFieldName(text: password, inputType: TextInputType.visiblePassword, pass: true),
              heightBox(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor: Colors.transparent,
                        ),
                        child: Checkbox(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5), side: BorderSide(color: textColor, width: 5)),
                            activeColor: textColor,
                            side: BorderSide(color: textColor, width: 2),
                            checkColor: primaryColor,
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            visualDensity: VisualDensity.standard,
                            value: checkbox,
                            onChanged: (val) {
                              setState(() {
                                checkbox = val!;
                              });
                            }),
                      ),
                      textShow(rememberme, 15.0),
                    ],
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(ForgetPasswordScreen());
                      },
                      child: textShow(forgetPass, 15.0, color: redButtonColor)),
                ],
              ),
              heightBox(20),
              CustomButton(title: singin.toUpperCase(), left: 0, right: 0, onTap: () {}, color: blueButtonColor),
              heightBox(30),
              Wrap(
                children: [
                  Text(
                    dontHaveAcc,
                    style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 20, color: textColor),
                  ),
                  widthBox(10),
                  InkWell(
                    onTap: () {
                      Get.to(RegisterScreen());
                    },
                    child: Text(
                      singup,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20, letterSpacing: 1.5, color: redButtonColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
