import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  static const String routeName = '/location';
  static Route route(){
    return MaterialPageRoute(builder: (_)=>LocationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Location'),centerTitle: true,),
      body: ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/basket');},child: Text('LocationScreen'),),
      
    );
  }
}