import 'package:flutter/material.dart';
import 'package:level_up/constants/assets.dart';
import 'package:level_up/constants/colors.dart';
import 'package:level_up/constants/dimensions.dart';
import 'package:level_up/constants/strings.dart';
import 'package:level_up/helper_widget.dart';
import 'package:level_up/widgets/gradient_box.dart';
import 'package:level_up/widgets/gradient_button.dart';
import 'package:level_up/widgets/textfield.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({Key? key}) : super(key: key);

  @override
  _OTPVerificationState createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GradientBox(
            padding: const EdgeInsets.symmetric(
                horizontal: margin_30, vertical: margin_40),
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal : margin_25 ,vertical: margin_35),
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(radius_8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    circularIcon(),
                    Padding(
                      padding: const EdgeInsets.all(margin_15),
                      child: HelperWidget().textStyle(
                          text: sendingOtp,
                          color: darkGrey,
                          fontSize: fontSize_16,
                          textAlign: TextAlign.center,
                          height: 1.5),
                    ),
                    const CustomTextField(
                        hintText: enterOtp, textAlign: TextAlign.center),
                    HelperWidget().vGap(gap: margin_15),
                    submitButton(),
                    HelperWidget().vGap(gap: margin_10),
                    notReceivedOtp(),
                    HelperWidget().vGap(gap: margin_20),
                    HelperWidget().textStyleMedium(
                        text: smsSent,
                        color: black,
                        fontSize: fontSize_16,
                        textAlign: TextAlign.center,
                        height: 2),
                    HelperWidget().vGap(gap: margin_10),
                    HelperWidget().textStyle(
                      text: changeMobileNumber,
                      color: darkGrey,
                      fontSize: fontSize_15,
                      decoration: TextDecoration.underline,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width),
      ),
    );
  }

  circularIcon() {
    return GradientBox(
      height: height_120,
      width: height_120,
      shape: BoxShape.circle,
      child: HelperWidget().assetImage(path: Assets.otpIcon, color: white),
    );
  }

  submitButton() {
    return GradientButton(
      onPressed: () {},
      text: submitNow,
      width: MediaQuery.of(context).size.width,
    );
  }

  notReceivedOtp() {
    return Center(
      child: RichText(
        text: TextSpan(
            text: didntRecievedOtp,
            style: TextStyle(
                color: darkGrey.withOpacity(0.9),
                fontWeight: FontWeight.w400,
                fontSize: fontSize_16),
            children: <TextSpan>[
              TextSpan(
                text: resendOtp,
                style: TextStyle(
                    color: black,
                    fontWeight: FontWeight.w800,
                    fontSize: fontSize_16),
              ),
            ]),
      ),
    );
  }
}
