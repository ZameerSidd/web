import 'package:flutter/material.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Text('Mobile Screen $currentWidth '),
      ),
    );
  }
}
