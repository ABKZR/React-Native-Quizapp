import 'package:flutter/material.dart';

class ReataurantListingScreen extends StatelessWidget {
  static const String routeName = '/restaurantlisting';
  static Route route(){
    return MaterialPageRoute(builder: (_)=>ReataurantListingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Restaurant Listing'),centerTitle: true,),
     body: ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/voucher');},child: Text('LocationScreen'),),
      
    );
  }
}