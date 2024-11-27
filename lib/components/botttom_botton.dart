import 'package:flutter/material.dart';
import '../constants.dart';



class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
   required this.text,
   required this.onTap
  });
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        color: kBottomConatainerColor,
        child: Center(child: Text(text,style: kLargeButtonTextStyle,)),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}