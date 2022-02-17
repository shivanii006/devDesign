import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level_up/constants/colors.dart';

class CustomTextField extends StatelessWidget {

  final String hintText;
  final IconData? suffixIcon;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextAlign textAlign;
  final bool readOnly;
  final double? iconSize;

  const CustomTextField(
      {Key? key,
      required this.hintText,
      this.suffixIcon,
      this.validator,
      this.controller,
      this.obscureText = false,
      this.keyboardType,
      this.textInputAction, this.textAlign  = TextAlign.start, this.readOnly = false, this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textAlign: textAlign,
      cursorColor: blue,
      readOnly: readOnly,
      decoration: InputDecoration(
          hintText: hintText,
          labelStyle: TextStyle(color: darkGrey, fontWeight: FontWeight.w400),
          hintStyle: TextStyle(color: darkGrey, fontWeight: FontWeight.w400),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: grey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: grey),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: grey),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: grey),
          ),
          suffixIcon: Icon(
            suffixIcon,
            color: grey,
            size: iconSize,
          )),
    );
  }
}
