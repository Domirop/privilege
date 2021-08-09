import 'package:flutter/material.dart';
import 'package:privilege/charge_screen/ChargeScreen.dart';
import 'package:privilege/preview_login/PreviewLogin.dart';
import 'package:privilege/profile/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Color.fromRGBO(60, 60, 62, 1),
        primarySwatch: Colors.blue,
      ),
      home: PreviewLogin(),
    );
  }
}