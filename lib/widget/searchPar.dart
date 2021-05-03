import 'package:flutter/material.dart';


class SearchPar extends StatelessWidget {
  const SearchPar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.transparent,
          border: Border.all(color: Colors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Find a Food or restaurant",
              suffixIcon: Icon(
                Icons.add_road_rounded,
                color: Colors.grey,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.indigo,
              ),
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
