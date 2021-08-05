import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/screen.dart';

class AppRouter{
  static Route onGenerateRoute(RouteSettings settings){
    print('The route name is ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
      return HomeScreen.route();
      case LocationScreen.routeName:
      return LocationScreen.route();
      case BasketScreen.routeName:
      return BasketScreen.route();
      case CheckoutScreen.routeName:
      return CheckoutScreen.route();
      case DeliveryScreen.routeName:
      return DeliveryScreen.route();
      case FilterScreen.routeName:
      return FilterScreen.route();
      case RestaurantDetailsScreen.routeName:
      return RestaurantDetailsScreen.route();
      case VoucherScreen.routeName:
      return VoucherScreen.route();
      case ReataurantListingScreen.routeName:
      return ReataurantListingScreen.route();
      default:
      return _errorRoute();
    }
  }
 static Route _errorRoute(){
   return MaterialPageRoute(builder: (_)=>Scaffold(appBar: AppBar(title: Text('error'),),
   
   ),
   settings: RouteSettings(name: '/error'));
 }
}
