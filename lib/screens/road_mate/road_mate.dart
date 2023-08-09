import 'package:flutter/material.dart';
import 'package:road_mate_user/widgets/routes/routes.dart';
import 'package:road_mate_user/widgets/utils/theme.dart';

class RoadMateUser extends StatelessWidget {
  const RoadMateUser({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Road Mate',
      theme: theme(),
      initialRoute: '/splash_screen',
      routes: routes,
    );
  }
}
