import 'package:flutter/material.dart';

class ReuseableListviewBuilder extends StatelessWidget {
  const ReuseableListviewBuilder(
      {Key? key, required this.list, this.height = 70})
      : super(key: key);

  final List list;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              Container(
                height: 100,
                margin: EdgeInsets.only(top: 4),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xff464646),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      list[index].title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      list[index].subTitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              )
            ],
          );
        },
      ),
    );
  }
}
