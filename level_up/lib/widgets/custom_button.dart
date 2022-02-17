import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level_up/constants/colors.dart';
import 'package:level_up/constants/dimensions.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final void Function() onPressed;
  final String text;
  final Color textColor;
  final Color buttonColor;
  const CustomButton(
      {Key? key,
      this.width,
      required this.onPressed,
      required this.text,
      this.buttonColor = Colors.black12,
      this.textColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: margin_30, vertical: margin_15),
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(radius_30)),
        width: width,
        constraints: BoxConstraints(minWidth: 110),
        child: Text(text,
            style: TextStyle(color: textColor, fontSize: fontSize_17),
            textAlign: TextAlign.center),
      ),
    );
  }
}
