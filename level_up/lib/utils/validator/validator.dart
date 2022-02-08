import '../../helper_widget.dart';

class Validator {
  bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(p);
    return regExp.hasMatch(em);
  }

  emailValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email id';
    } else if (isEmail(value) == false) {
      return 'Please enter valid email id';
    }
    return null;
  }

  bool isPassword(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(value);
  }

  bool isPhoneNumber(String value) {
    String pattern = r'^(?:[+0]9)?[0-9]{10}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(value);
  }

  passwordValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    } else if (isPassword(value) == false) {
      return 'Please enter a valid password';
    }
    return null;
  }
}
