import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  static const String routeName = '/filter';
  static Route route(){
    return MaterialPageRoute(builder: (_)=>FilterScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filter'),centerTitle: true,),
      body: ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/restaurant');},child: Text('LocationScreen'),),
      
    );
  }
}