import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  static const String routeName = '/checkout';
  static Route route(){
    return MaterialPageRoute(builder: (_)=>CheckoutScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkout'),centerTitle: true,),
      body: ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/delivery');},child: Text('LocationScreen'),),
      
    );
  }
}