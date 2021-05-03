import 'package:flutter/material.dart';

class sectionCrad extends StatelessWidget {
  const sectionCrad({
    Key key,
    @required this.icon,
    @required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              icon,
              color: Colors.indigo,
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(title),
          ),
        ],
      ),
    );
  }
}
