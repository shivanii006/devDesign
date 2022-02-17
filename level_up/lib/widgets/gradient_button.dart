import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level_up/constants/colors.dart';
import 'package:level_up/constants/dimensions.dart';

class GradientButton extends StatelessWidget {
  final double? width;
  final String text;
  final void Function() onPressed;

  const GradientButton(
      {Key? key, this.width, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: onPressed,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius_30),
          gradient: LinearGradient(
              colors: [blue, red],
              end: Alignment.centerRight,
              begin: Alignment.centerLeft,
              stops: const [0.3, 0.9]),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: margin_30, vertical: margin_12),
          width: width,
          constraints: const BoxConstraints(minWidth: 110.0),
          child: Text(text,
              style: TextStyle(color: white, fontSize: fontSize_17),
              textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
