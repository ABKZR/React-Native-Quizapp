import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  DropDown({Key? key}) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String> dropdownField = [
    "Location 1",
    "Location 2",
    "Location 3",
  ];
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
            canvasColor: Color(0xff143B5B)),
      child: DropdownButtonFormField(
        value: dropdownValue,
        icon: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,),
        onChanged: (value) {
          setState(() {
            dropdownValue = value as String?;
          });
        },
        items: dropdownField.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value,style: TextStyle(color: Colors.white),),
          );
        }).toList(),
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            hintText: "Select Location",
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(Icons.location_on_outlined,color: Colors.white,)),
      ),
    );
  }
}
