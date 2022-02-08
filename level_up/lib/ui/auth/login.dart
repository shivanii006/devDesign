import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level_up/constants/assets.dart';
import 'package:level_up/constants/colors.dart';
import 'package:level_up/constants/dimensions.dart';
import 'package:level_up/constants/strings.dart';
import 'package:level_up/helper_widget.dart';
import 'package:level_up/widgets/gradient_button.dart';
import 'package:level_up/widgets/outlined_button.dart';
import 'package:level_up/widgets/textfield.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: HelperWidget().fullScreen(
            context: context,
            padding: const EdgeInsets.all(margin_20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HelperWidget().textStyleBold(
                    text: welcome,
                    fontSize: fontSize_26,
                    textAlign: TextAlign.start),
                HelperWidget().vGap(gap: margin_8),
                HelperWidget().textStyleMedium(
                    text: signInToContinue, fontSize: fontSize_18),
                form(),
                loginButton(),
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
                notAUser(),
              ],
            )),
      ),
    );
  }

  form(){
    return Form(
      child: Column(
        children: [
          HelperWidget().vGap(gap: margin_30),
          const CustomTextField(hintText: username, textInputAction: TextInputAction.next,),
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

  loginButton() {
    return GradientButton(
      onPressed: () {},
      text: login,
      width: MediaQuery.of(context).size.width,
    );
  }

  fbButton() {
    return CustomOutlinedButton(
      onPressed: () {},
      text: loginWithFb,
      width: MediaQuery.of(context).size.width,
      icon: HelperWidget().assetImage(
          path: Assets.fbIcon,
          height: height_45,
          width: height_45,
          fit: BoxFit.fill,
          color: darkGrey.withOpacity(0.7)),
    );
  }

  notAUser() {
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
                text: signUp,
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
