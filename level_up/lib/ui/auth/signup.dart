import 'package:flutter/material.dart';
import 'package:level_up/constants/assets.dart';
import 'package:level_up/constants/colors.dart';
import 'package:level_up/constants/dimensions.dart';
import 'package:level_up/constants/strings.dart';
import 'package:level_up/helper_widget.dart';
import 'package:level_up/widgets/gradient_button.dart';
import 'package:level_up/widgets/outlined_button.dart';
import 'package:level_up/widgets/textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: HelperWidget().fullScreen(context: context,
            padding: const EdgeInsets.all(margin_20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HelperWidget().textStyleBold(
                text: signUpHeading,
                fontSize: fontSize_20,
                textAlign: TextAlign.start),
            form(),
            registerButton(),
            HelperWidget().vGap(gap: margin_15),
            Center(
                child: HelperWidget().textStyle(text: or, color: darkGrey, fontSize: fontSize_16)),
            HelperWidget().vGap(gap: margin_15),
            fbButton(),
            HelperWidget().vGap(gap: margin_30),
            Center(
              child: HelperWidget()
                  .textStyleMedium(text: forgotPassword, color: darkGrey),
            ),
            HelperWidget().vGap(gap: margin_12),
            alreadyAUser()
          ],
        )),
      ),
    );
  }

  form(){
    return Form(
      child: Column(
        children: [
          HelperWidget().vGap(gap: margin_60),
          const CustomTextField(hintText: firstName, textInputAction: TextInputAction.next,),
          HelperWidget().vGap(gap: margin_8),
          const CustomTextField(hintText: lastName, textInputAction: TextInputAction.next,),
          HelperWidget().vGap(gap: margin_8),
          const CustomTextField(hintText: email, textInputAction: TextInputAction.next,),
          HelperWidget().vGap(gap: margin_8),
          const CustomTextField(hintText: mobileNumber, textInputAction: TextInputAction.next,),
          HelperWidget().vGap(gap: margin_8),
          const CustomTextField(
            hintText: password,
            textInputAction: TextInputAction.done,
            suffixIcon: Icons.remove_red_eye,
          ),
          HelperWidget().vGap(gap: margin_30),
        ],
      ),
    );
  }

  registerButton() {
    return GradientButton(
      onPressed: () {},
      text: register,
      width: MediaQuery.of(context).size.width,
    );
  }

  fbButton() {
    return CustomOutlinedButton(
      onPressed: () {},
      text: registerWithFb,
      width: MediaQuery.of(context).size.width,
      icon: HelperWidget().assetImage(
          path: Assets.fbIcon,
          height: height_45,
          width: height_45,
          fit: BoxFit.fill,
          color: darkGrey.withOpacity(0.7)),
    );
  }

  alreadyAUser() {
    return Center(
      child: RichText(
        text: TextSpan(
            text: alreadyHaveAnAccount,
            style: TextStyle(
                color: darkGrey.withOpacity(0.9),
                fontWeight: FontWeight.w400,
                fontSize: fontSize_15),
            children: <TextSpan>[
              TextSpan(
                text: login,
                style: TextStyle(
                    color: black,
                    fontWeight: FontWeight.w800,
                    fontSize: fontSize_15),
              ),
            ]),
      ),
    );
  }

}
