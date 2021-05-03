import 'package:flutter/material.dart';


class mytitle extends StatelessWidget {
  const mytitle({
    Key key,
    @required this.title,
    @required this.fontSize,
  }) : super(key: key);

  final String title;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
