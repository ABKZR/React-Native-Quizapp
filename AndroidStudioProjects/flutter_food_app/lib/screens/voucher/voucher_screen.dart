import 'package:flutter/material.dart';

class VoucherScreen extends StatelessWidget {
  static const String routeName = '/voucher';
  static Route route(){
    return MaterialPageRoute(builder: (_)=>VoucherScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('voucher'),centerTitle: true,),
      body: ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/location');},child: Text('LocationScreen'),),
      
    );
  }
}