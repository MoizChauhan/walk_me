import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double left;
  final double right;
  final Function() onTap;
  final String title;
  final Color color;

  CustomButton({
    required this.title,
    required this.left,
    required this.right,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left, right: right),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: new BoxDecoration(
            color: color,
            shape: BoxShape.rectangle,
            //  border: Border.all(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
