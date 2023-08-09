import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:road_mate_user/widgets/buttons/primary_button.dart';
import 'package:road_mate_user/widgets/dimension/dimension.dart';
import 'package:road_mate_user/widgets/routes/navigator.dart';
import 'package:road_mate_user/widgets/text/text.dart';
import 'package:road_mate_user/widgets/utils/color/app_colors.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const space = SizedBox(
      height: 20,
    );
    const sp = SizedBox(
      height: 10,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(
          color: AppColors.whiteColor,
        ),
        title: TextWidget(
          text: 'Car details',
          textAlign: TextAlign.center,
          style: GoogleFonts.sigmarOne(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 28.27,
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            space,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/car_1.png'),
              ],
            ),
            space,
            space,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: 'Car Type',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.textiaryColor,
                          ),
                    ),
                    sp,
                    TextWidget(
                      text: 'Sedan',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    space,
                    TextWidget(
                      text: 'Year Model',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.textiaryColor,
                          ),
                    ),
                    sp,
                    TextWidget(
                      text: '2022',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: 'Car Model',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.textiaryColor,
                          ),
                    ),
                    sp,
                    TextWidget(
                      text: 'Toyota Camery',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    space,
                    TextWidget(
                      text: 'Plate Number',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.textiaryColor,
                          ),
                    ),
                    sp,
                    TextWidget(
                      text: 'GT-6537-23',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              ],
            ),
            space,
            Container(
              height: screenSize(context).height * 0.15,
              width: screenSize(context).width,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: AppColors.textiaryColor.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundColor: AppColors.whiteColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: const CircleAvatar(
                            radius: 15,
                            child: Icon(
                              Icons.edit_outlined,
                              size: 18,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'James Owusu',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: AppColors.secondaryColor,
                            ),
                      ),
                      sp,
                      TextWidget(
                        text: 'B0-5237238232',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: AppColors.textiaryColor,
                            ),
                      )
                    ],
                  )
                ],
              ),
            ),
            space,
            space,
            PrimaryButton(
              text: 'CONFIRM',
              foregroundColor: AppColors.whiteColor,
              backgroundColor: AppColors.primaryColor,
              textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
              onPressed: () {
                primaryNavigator(context, routeTo: '/home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
