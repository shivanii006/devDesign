import 'package:flutter/cupertino.dart';
import 'package:level_up/constants/colors.dart';

class GradientBox extends StatelessWidget {
  final Widget? child;
  final double height;
  final double width;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BoxShape shape;

  const GradientBox(
      {Key? key,
      this.child,
      required this.height,
      required this.width,
      this.padding,
      this.margin,
      this.shape = BoxShape.rectangle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          shape: shape,
          gradient: LinearGradient(
            colors: [red, blue],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: const [0.3, 0.7],
          )),
      child: child,
    );
  }
}
