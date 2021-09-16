import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:walk_me/Utils/color.dart';
import 'package:walk_me/Utils/images.dart';
import 'package:walk_me/Utils/string.dart';
import 'package:walk_me/Widgets/Custombutton.dart';
import 'package:walk_me/Widgets/sizeBoxes.dart';
import 'package:walk_me/Widgets/textfieldName.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
                  resetPass,
                  style: TextStyle(color: textColor, fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              heightBox(20),
              textFieldName(
                text: name,
                inputType: TextInputType.name,
              ),
              heightBox(10),
              textFieldName(
                text: email,
                inputType: TextInputType.emailAddress,
              ),
              heightBox(10),
              textFieldName(
                text: userName,
                inputType: TextInputType.name,
              ),
              heightBox(10),
              textFieldName(
                text: password,
                inputType: TextInputType.visiblePassword,
                pass: true,
              ),
              heightBox(10),
              heightBox(20),
              CustomButton(title: resetPass.toUpperCase(), left: 0, right: 0, onTap: () {}, color: redButtonColor),
              heightBox(30),
            ],
          ),
        ),
      ),
    );
  }
}
