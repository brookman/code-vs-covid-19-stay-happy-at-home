import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  final Widget child;

  BottomBarWidget({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      child: child,
    );
  }
}
