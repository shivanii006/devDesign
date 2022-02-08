import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level_up/constants/colors.dart';

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
          borderRadius: BorderRadius.circular(40.0),
          gradient: LinearGradient(
              colors: [blue, red],
              end: Alignment.centerRight,
              begin: Alignment.centerLeft,
              stops: const [0.3, 0.9]),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
          width: width,
          constraints: const BoxConstraints(minWidth: 110.0),
          child: Text(text,
              style: TextStyle(color: white, fontSize: 17),
              textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
