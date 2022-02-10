import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelperWidget {
  static final HelperWidget _instance = HelperWidget._internal();

  factory HelperWidget() => _instance;

  HelperWidget._internal();

/* ========================================== textStyles =========================================*/

  Widget textStyle(
      {required String text,
      Color? color,
      double? fontSize,
      double? height,
      double? letterSpacing,
      TextOverflow? textOverflow,
      int? maxLines,
      TextAlign? textAlign,
      TextDecoration? decoration}) {
    return Text(
      text,
      overflow: textOverflow,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          height: height,
          decoration: decoration,
          letterSpacing: letterSpacing,
         ),
    );
  }

  Widget textStyleMedium(
      {required String text,
      Color? color,
      double? fontSize,
      double? height,
      double? letterSpacing,
      TextOverflow? textOverflow,
      int? maxLines,
      TextAlign? textAlign,
      TextDecoration? decoration}) {
    return Text(
      text,
      overflow: textOverflow,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          height: height,
          decoration: decoration,
          fontWeight: FontWeight.w400,
          letterSpacing: letterSpacing,
          ),
    );
  }

  Widget textStyleBold(
      {required String text,
      Color? color,
      double? fontSize,
      double? height,
      TextOverflow? textOverflow,
      int? maxLines,
      TextAlign? textAlign,
      TextDecoration? decoration}) {
    return Text(
      text,
      overflow: textOverflow,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          height: height,
          decoration: decoration,
          fontWeight: FontWeight.bold),
    );
  }

/* ========================================== images =========================================*/

  Widget assetImage(
      {required String path,
      double? height,
      double? width,
      BoxFit? fit,
      Color? color}) {
    return Image.asset(
      path,
      height: height,
      width: width,
      fit: fit,
      color: color,
    );
  }

  Widget networkImage(
      {required String path,
      double? height,
      double? width,
      BoxFit? fit,
      Color? color}) {
    return Image.network(
      path,
      height: height,
      width: width,
      fit: fit,
      color: color,
    );
  }

  /* ========================================== gap =========================================*/

  Widget vGap({required double gap}) {
    return SizedBox(height: gap);
  }

  Widget hGap({required double gap}) {
    return SizedBox(width: gap);
  }

/* ========================================== fullscreen =========================================*/

  Widget fullScreen(
      {required BuildContext context,
      required Widget child,
      EdgeInsetsGeometry? padding,
      Decoration? decoration,
      EdgeInsetsGeometry? margin}) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: child,
      padding: padding,
      margin: margin,
      decoration: decoration,
    );
  }

/* ========================================== navigation =========================================*/

  push(context, var ref) {
    return Navigator.push(
        context, PageRouteBuilder(pageBuilder: (_, __, ___) => ref));
  }

  pushNamed(context, var ref) {
    return Navigator.pushNamed(context, ref);
  }

  pushReplacement(context, var ref) {
    return Navigator.pushReplacement(
        context, PageRouteBuilder(pageBuilder: (_, __, ___) => ref));
  }

  pushReplacementNamed(context, var ref) {
    return Navigator.pushReplacementNamed(context, ref);
  }

  pushNamedAndRemoveUntil(context, var ref) {
    return Navigator.of(context)
        .pushNamedAndRemoveUntil(ref, (Route<dynamic> route) => false);
  }
}
