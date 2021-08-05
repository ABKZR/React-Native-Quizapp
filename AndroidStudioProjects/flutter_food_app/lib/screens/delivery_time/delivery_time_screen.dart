import 'package:flutter/material.dart';

class DeliveryScreen extends StatelessWidget {
  static const String routeName = '/delivery';
  static Route route(){
    return MaterialPageRoute(builder: (_)=>DeliveryScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Delivery'),centerTitle: true,),
      body: ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/filter');},child: Text('LocationScreen'),),
      
    );
  }
}