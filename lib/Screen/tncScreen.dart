import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:walk_me/Utils/color.dart';
import 'package:walk_me/Utils/images.dart';
import 'package:walk_me/Utils/string.dart';
import 'package:walk_me/Widgets/sizeBoxes.dart';

class TncScreen extends StatefulWidget {
  const TncScreen({Key? key}) : super(key: key);

  @override
  _TncScreenState createState() => _TncScreenState();
}

class _TncScreenState extends State<TncScreen> {
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
              Text(
                tnc.toUpperCase(),
                style: TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.w800),
              ),
              heightBox(20),
              Text(
                textIpsum,
                style: TextStyle(color: textColor, fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
