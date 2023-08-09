import 'package:flutter/material.dart';
import 'package:road_mate_user/auth/business_info/business_info.dart';
import 'package:road_mate_user/auth/register/register.dart';
import 'package:road_mate_user/screens/car_details/car_details_screen.dart';
import 'package:road_mate_user/screens/google_map/map.dart';
import 'package:road_mate_user/screens/home/home.dart';
import 'package:road_mate_user/screens/messaging/messaging_screen.dart';
import 'package:road_mate_user/screens/splash_screen/splash_screen.dart';

import '../../auth/login/login.dart';

// ****************************************************************
// hundling all screeens here for easy access
// ****************************************************************

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  '/splash_screen': (context) => const SplashScreen(),
  '/register': (context) => const RegisterScreen(),
  '/login': (context) => const LoginScreen(),
  '/add_business_info': (context) => const BusinessInformation(),
  '/view_business_info': (context) => const CarDetailsScreen(),
  '/home': (context) => const HomeScreen(),
  '/message': (context) => const MessagingScreen(),
  '/googleMap': (context) => const GoogleMapScreen(),
};
