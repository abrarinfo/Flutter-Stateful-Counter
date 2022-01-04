import 'package:flutter/material.dart';
import 'package:flutter_stateful_example_1/utils/color_manager.dart';

class Box extends StatelessWidget {
  Box({
    Key? key,
    this.color = Colors.white,
    this.text = "",
  }) : super(key: key);

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 2,
            spreadRadius: 2,
            offset: Offset(2, 2), // shadow direction: bottom right
          )
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
