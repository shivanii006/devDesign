import 'package:flutter/material.dart';
import 'package:level_up/constants/assets.dart';
import 'package:level_up/constants/colors.dart';
import 'package:level_up/constants/dimensions.dart';
import 'package:level_up/constants/strings.dart';
import 'package:level_up/widgets/custom_button.dart';

import '../../helper_widget.dart';

class SelectCategory extends StatefulWidget {
  @override
  _SelectCategoryState createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
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
                  text: selectYourCategory,
                  fontSize: fontSize_18,
                  color: darkGrey.withOpacity(0.8),
                  textAlign: TextAlign.start),
              category(),
              Divider(
                thickness: 1.5,
              ),
              HelperWidget().textStyleMedium(
                  text: selectYourGender,
                  fontSize: fontSize_18,
                  color: darkGrey.withOpacity(0.8),
                  textAlign: TextAlign.start),
              gender()
            ],
          ),
        ),
      ),
    );
  }

  gender() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: margin_10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: CustomButton(
            onPressed: () {},
            text: female,
            width: height_170,
          )),
          HelperWidget().hGap(gap: margin_20),
          Expanded(
            child: CustomButton(
              onPressed: () {},
              text: male,
              width: height_170,
            ),
          ),
        ],
      ),
    );
  }

  category() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: margin_20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PlayerCategory(
            category: batter,
          ),
          PlayerCategory(
            category: bowler,
          ),
          PlayerCategory(
            category: keeper,
          ),
        ],
      ),
    );
  }
}

class PlayerCategory extends StatelessWidget {
  final String category;

  const PlayerCategory({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            EdgeInsets.symmetric(horizontal: margin_15, vertical: margin_8),
        child: Column(
          children: [
            Image.asset(
              Assets.playerIcon,
              height: height_80,
            ),
            HelperWidget()
                .textStyleMedium(text: category, fontSize: fontSize_16)
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius_15),
            color: darkGrey.withOpacity(0.2)));
  }
}
