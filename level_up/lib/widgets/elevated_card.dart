import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level_up/constants/colors.dart';
import 'package:level_up/constants/dimensions.dart';

class ElevatedCard extends StatelessWidget {
  final String title;
  final IconData suffixIcon;
  final IconData prefixIcon;
  final void Function()? onPressed;

  ElevatedCard({required this.title, required this.prefixIcon, required this.suffixIcon,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: ElevatedButton(
        child: ListTile(
          leading: Icon(
            prefixIcon,
            color: red,
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 18, color: black),
          ),
          trailing: Icon(
            suffixIcon,
            size: 28,
            color: red,
          ),
        ),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 6,
          shadowColor: grey,
          primary: white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius_30)),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
        ),
      ),
    );
  }
}
