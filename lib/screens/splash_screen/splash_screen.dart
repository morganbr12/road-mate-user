import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:road_mate_user/widgets/dimension/dimension.dart';
import 'package:road_mate_user/widgets/routes/navigator.dart';
import 'package:road_mate_user/widgets/text/text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 3000,
      ),
    );

    _controller
        .forward()
        .whenComplete(() => primaryNavigator(context, routeTo: '/login'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(233, 50, 50, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo/car_logo.png',
              scale: 0.6,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: screenSize(context).width * 0.5,
              child: TextWidget(
                text: 'Road Mate',
                textAlign: TextAlign.center,
                style: GoogleFonts.sigmarOne(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 28.27,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
