import 'package:flutter/material.dart';

class CustomSubTitleText extends StatelessWidget {
  const CustomSubTitleText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.italic,
          wordSpacing: 4,
          color: Color(0xffab0012)),
    );
  }
}
