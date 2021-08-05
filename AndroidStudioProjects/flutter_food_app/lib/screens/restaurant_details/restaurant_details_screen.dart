import 'package:flutter/material.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  static const String routeName = '/restaurant';
  static Route route(){
    return MaterialPageRoute(builder: (_)=>RestaurantDetailsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Restaurant Details'),centerTitle: true,),
     body: ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/restaurantlisting');},child: Text('LocationScreen'),),
      
    );
  }
}