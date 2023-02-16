import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final textcolor;
  final backgroundcolor;
  final String text;
  final BorderRadius? borderRadius;
  const CustomButton(
      {Key? key,
      required this.textcolor,
      required this.backgroundcolor,
      this.borderRadius,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundcolor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12))),
        child: Text(
          text,
          style: Styles.textStyle18
              .copyWith(color: textcolor, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
