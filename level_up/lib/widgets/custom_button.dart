import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level_up/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final void Function() onPressed;
  final String text;
  const CustomButton({Key? key, this.width, required this.onPressed, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
          decoration: BoxDecoration(
            color: grey,
            borderRadius: BorderRadius.circular(30.0)
          ),
          width: width,
          constraints: const BoxConstraints(minWidth: 110.0),
          child: Text(text, style: TextStyle(color: darkGrey, fontSize: 17) ,textAlign: TextAlign.center),
        ),
    );
  }
}
