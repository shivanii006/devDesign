import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level_up/constants/colors.dart';
import 'package:level_up/constants/dimensions.dart';


import '../helper_widget.dart';

class CustomOutlinedButton extends StatelessWidget {

  final double? width;
  final String text;
  final void Function()? onPressed;
  final Widget icon;

  const CustomOutlinedButton(
      {Key? key, this.width, required this.onPressed, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius_30),
        ),
        side: BorderSide(width: 2, color: grey),
      ),
      onPressed: onPressed,
      child : Container(
        padding: const EdgeInsets.symmetric(horizontal: margin_30),
        width: width,
        constraints: const BoxConstraints(minWidth: 110.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            HelperWidget().hGap(gap: margin_4),
            HelperWidget().textStyleMedium(text: text, color: darkGrey, fontSize: fontSize_16),
          ],
        ),
      ),
    );
  }
}
