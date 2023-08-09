import 'package:flutter/material.dart';
import 'package:road_mate_user/widgets/dimension/dimension.dart';
import 'package:road_mate_user/widgets/text/text.dart';
import 'package:road_mate_user/widgets/utils/color/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
    this.text, {
    this.icon,
    this.color,
    this.gradient,
    this.onTap,
    super.key,
  });

  final Widget? icon;
  final String text;
  final Color? color;
  final Gradient? gradient;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: screenSize(context).width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
          gradient: gradient,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: icon,
            ),
            const SizedBox(
              width: 30,
            ),
            TextWidget(
              text: text,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.secondaryColor,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
