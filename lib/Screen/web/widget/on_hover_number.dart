import 'package:flutter/material.dart';

class OnHoverNumber extends StatefulWidget {
  final Widget Function(bool isHovered) builder;

  const OnHoverNumber({Key? key, required this.builder}) : super(key: key);

  @override
  _OnHoverNumberState createState() => _OnHoverNumberState();
}

class _OnHoverNumberState extends State<OnHoverNumber> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()..translate(0, 0, 0);
    final transform = isHovered ? hovered : Matrix4.identity();

    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
