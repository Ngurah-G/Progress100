import 'package:mobile_apk/loginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login Page",
    initialRoute: "/login",
    routes: {
      "/login": (context) => LoginPage(),
    },
  ));
}
