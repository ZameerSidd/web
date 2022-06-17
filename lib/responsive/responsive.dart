import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget web;
  const Responsive({required this.mobile, required this.web, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return check(context, constraints);
      },
    );
  }

  check(context, constraints) {
    if (constraints.maxWidth < 500) {
      return mobile;
    } else {
      return web;
    }
  }
}
