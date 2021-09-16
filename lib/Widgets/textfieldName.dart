import 'package:flutter/material.dart';
import 'package:walk_me/Utils/color.dart';
import 'package:walk_me/Widgets/sizeBoxes.dart';

textFieldName({required text, required TextInputType inputType, controller, pass = false}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        text,
        style: TextStyle(color: textColor, fontSize: 15),
      ),
      heightBox(5),
      Container(
        decoration: BoxDecoration(
          color: textColor,
          borderRadius: BorderRadius.circular(3),
        ),
        child: TextField(
          // controller: controller,
          obscureText: pass,
          keyboardType: inputType,
          style: TextStyle(fontSize: 30),
          decoration: InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.symmetric(horizontal: 10)),
        ),
      )
    ],
  );
}

Widget textShow(String text, double size, {color}) {
  return Text(
    text,
    style: TextStyle(color: color == null ? textColor : color, fontSize: size),
  );
}
