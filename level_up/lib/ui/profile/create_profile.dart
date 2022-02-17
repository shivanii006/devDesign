import 'package:flutter/material.dart';
import 'package:level_up/constants/colors.dart';
import 'package:level_up/constants/dimensions.dart';
import 'package:level_up/constants/strings.dart';
import 'package:level_up/helper_widget.dart';
import 'package:level_up/widgets/gradient_button.dart';
import 'package:level_up/widgets/textfield.dart';

class CreateProfile extends StatefulWidget {
  @override
  _CreateProfileState createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
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
          child: Column(
            children: [
              Stack(
                children: [
                  userDetail(),
                  Positioned(right: 0, child: editName())
                ],
              ),
              userEmailInfo(),
              userMobileInfo(),
              HelperWidget().textStyleMedium(
                  text: completeProfileDetails,
                  color: black,
                  fontSize: fontSize_16,
                  textAlign: TextAlign.center,
                  height: 1.6),
              HelperWidget().vGap(gap: margin_25),
              startButton()
            ],
          ),
        ),
      ),
    );
  }

  startButton() {
    return GradientButton(
      onPressed: () {},
      text: letsStart,
      width: height_150,
    );
  }

  userDetail() {
    return Container(
      height: height_150,
      color: red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.account_circle,
            size: 120,
            color: grey,
          ),
          HelperWidget().textStyleMedium(
              text: "Muthaiya Murlitharan",
              textOverflow: TextOverflow.ellipsis,
              color: white,
              fontSize: fontSize_22)
        ],
      ),
    );
  }

  editName() {
    return IconButton(
        icon: Icon(
          Icons.edit,
          size: height_18,
          color: white,
        ),
        onPressed: () {});
  }

  userEmailInfo() {
    return Padding(
      padding: const EdgeInsets.only(
          left: margin_20, right: margin_20, bottom: margin_10, top: margin_20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: CustomTextField(
                hintText: email,
                readOnly: true,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: CustomTextField(
                hintText: "muthya@gmail.com",
                iconSize: height_18,
                suffixIcon: Icons.edit,
                readOnly: true,
              ),
            ),
          ),
        ],
      ),
    );
  }

  userMobileInfo() {
    return Padding(
      padding: const EdgeInsets.only(
          left: margin_20, right: margin_20, bottom: margin_100),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: CustomTextField(
                hintText: mobileNumber,
                readOnly: true,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: CustomTextField(
                hintText: "0494792402",
                readOnly: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
