import 'package:flutter/material.dart';
import 'package:road_mate_user/widgets/dimension/dimension.dart';
import 'package:road_mate_user/widgets/inputs/primary_input.dart';
import 'package:road_mate_user/widgets/utils/color/app_colors.dart';

class MessagingScreen extends StatefulWidget {
  const MessagingScreen({super.key});

  @override
  State<MessagingScreen> createState() => _MessagingScreenState();
}

class _MessagingScreenState extends State<MessagingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(
          color: AppColors.whiteColor,
        ),
        // title: ,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            Container(
              width: screenSize(context).width,
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: PrimaryInput(
                hintText: 'Enter message...',
                suffixIcon: GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    child: Image.asset('assets/icons/arrow.png'),
                  ),
                ),
                prefixIcon: Image.asset('assets/icons/clip.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
