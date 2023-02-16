import 'package:flutter/cupertino.dart';

import '../utils/styles.dart';

class CustomErrorWidget extends StatelessWidget {
  final String ErrorMessage;
  const CustomErrorWidget({Key? key, required this.ErrorMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      ErrorMessage,
      style: Styles.textStyle18,
    );
  }
}
