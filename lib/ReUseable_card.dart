import 'package:flutter/material.dart';
class ReusableWidget extends StatelessWidget {
  ReusableWidget({required this.colour,this.cardWidget,this.onPress});
  final Color colour;
  final cardWidget;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
      child: Container(
        child: cardWidget,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color:colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 200.0,
        width: 170.0,
      ),
    );
  }
}
