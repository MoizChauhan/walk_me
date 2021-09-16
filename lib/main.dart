import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:walk_me/Screen/initialScreen.dart';

import 'Utils/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Walk With Me',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff020202),
        scaffoldBackgroundColor: primaryColor,
      ),
      home: InitialScreen(),
    );
  }
}
