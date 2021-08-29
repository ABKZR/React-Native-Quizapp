
import 'package:flutter/material.dart';

class ReuseableHeadingRow extends StatelessWidget {
  const ReuseableHeadingRow(
      {Key? key, required this.heading, this.subHeading = '', this.marginTop =5})
      : super(key: key);
  final String heading;
  final String subHeading;
  final double marginTop;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Text(
            subHeading,
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
