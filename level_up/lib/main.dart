

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level_up/ui/profile/profile_screen.dart';

import 'package:level_up/utils/routes/routes.dart';

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
        home: ProfileScreen());
  }
}
