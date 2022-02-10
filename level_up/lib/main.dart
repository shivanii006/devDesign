import 'package:flutter/material.dart';
import 'package:level_up/ui/auth/account_created.dart';
import 'package:level_up/ui/auth/login.dart';
import 'package:level_up/ui/auth/otp_verification.dart';
import 'package:level_up/ui/auth/signup.dart';
import 'package:level_up/ui/splash/splash.dart';
import 'package:level_up/utils/routes/routes.dart';

import 'ui/auth/login.dart';
import 'utils/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Level Up',
        debugShowCheckedModeBanner: false,
        routes: Routes.routes,
        home: Login()
    );
  }
}


