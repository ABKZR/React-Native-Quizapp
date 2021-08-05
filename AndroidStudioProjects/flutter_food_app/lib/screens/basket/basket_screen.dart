import 'package:flutter/material.dart';

class BasketScreen extends StatelessWidget {
  static const String routeName = '/basket';
  static Route route(){
    return MaterialPageRoute(builder: (_)=>BasketScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Basket'),centerTitle: true,),
      body: ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/checkout');},child: Text('LocationScreen'),),
      
    );
  }
}