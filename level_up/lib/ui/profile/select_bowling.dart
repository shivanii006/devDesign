import 'package:flutter/material.dart';
import 'package:level_up/constants/colors.dart';
import 'package:level_up/constants/dimensions.dart';
import 'package:level_up/constants/strings.dart';
import 'package:level_up/widgets/custom_button.dart';

import '../../helper_widget.dart';

class SelectBowling extends StatefulWidget {
  @override
  _SelectBowlingState createState() => _SelectBowlingState();
}

class _SelectBowlingState extends State<SelectBowling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_outlined,
          color: darkGrey,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: margin_10),
            child: Icon(
              Icons.arrow_forward_outlined,
              color: darkGrey,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(margin_20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HelperWidget().textStyleMedium(
                  text: createProfile,
                  fontSize: fontSize_22,
                  textAlign: TextAlign.start),
              HelperWidget().textStyleMedium(
                  text: selectYourBowlingSide,
                  fontSize: fontSize_18,
                  color: darkGrey.withOpacity(0.8),
                  textAlign: TextAlign.start),
              bowlingSide(),
              Divider(
                thickness: 1.5,
              ),
              HelperWidget().textStyleMedium(
                  text: selectYourBowlingStyle,
                  fontSize: fontSize_18,
                  color: darkGrey.withOpacity(0.8),
                  textAlign: TextAlign.start),
              bowlingStyle()
            ],
          ),
        ),
      ),
    );
  }

  bowlingSide() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: margin_10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: CustomButton(
            onPressed: () {},
            text: leftArm,
            width: height_170,
          )),
          HelperWidget().hGap(gap: margin_20),
          Expanded(
            child: CustomButton(
              onPressed: () {},
              text: rightArm,
              width: height_170,
            ),
          ),
        ],
      ),
    );
  }

  bowlingStyle() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: margin_10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: CustomButton(
            onPressed: () {},
            text: pace,
            width: height_170,
          )),
          HelperWidget().hGap(gap: margin_20),
          Expanded(
            child: CustomButton(
              onPressed: () {},
              text: spin,
              width: height_170,
            ),
          ),
        ],
      ),
    );
  }
}
