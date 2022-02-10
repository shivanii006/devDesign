import 'package:flutter/material.dart';
import 'package:level_up/constants/colors.dart';
import 'package:level_up/constants/dimensions.dart';
import 'package:level_up/constants/strings.dart';
import 'package:level_up/helper_widget.dart';
import 'package:level_up/widgets/gradient_box.dart';

class AccountCreated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(margin_40),
        child: welcomeAbroadMessage()
      ),
    );
  }

  welcomeAbroadMessage(){
    return Container(
        child: Center(child: HelperWidget().textStyleMedium(text: welcomeAbroad, color: white, fontSize: fontSize_20 , textAlign: TextAlign.center, height: 1.3),),
    decoration: BoxDecoration(
    border: Border.all(color: white,width: 3),
    shape: BoxShape.circle,
    color: Colors.transparent
    ));
  }
}
