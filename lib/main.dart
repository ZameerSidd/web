// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sample_ui/Screen/Mobile/mobile_home.dart';
import 'package:sample_ui/Screen/web/home.dart';
import 'package:sample_ui/responsive/responsive.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Responsive(
      mobile: MobileHome(),
      web: Home(),
    ),
  ));
}
