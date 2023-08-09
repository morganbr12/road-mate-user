import 'package:flutter/material.dart';
import 'package:road_mate_user/widgets/dimension/dimension.dart';
import 'package:road_mate_user/widgets/routes/navigator.dart';
import 'package:road_mate_user/widgets/text/text.dart';
import 'package:road_mate_user/widgets/utils/color/app_colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.darkbrown,
      child: Column(
        children: [
          Container(
            height: 130,
            width: screenSize(context).width,
            decoration: BoxDecoration(
              color: AppColors.textiaryColor.shade400,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: AppColors.textiaryColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'W&E Battery Repair',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/icons/shop.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          TextWidget(
                            text: 'B0-5237238232',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontSize: 12,
                                ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const CircleAvatar(
                              radius: 12,
                              backgroundColor: AppColors.deepBlue,
                              child: Icon(
                                Icons.edit_outlined,
                                size: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: screenSize(context).width * 0.65,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: TextWidget(
                text: 'CHAT WITH US',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ListTile(
            onTap: () {
              popNavigator(context);
              // primaryNavigator(context, routeTo: '/home');
            },
            leading: Image.asset('assets/icons/home.png'),
            title: TextWidget(
              text: 'Home',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          ListTile(
            onTap: () {
              popNavigator(context);
              secondaryNavigator(context, routeTo: '/message');
            },
            leading: Image.asset('assets/icons/message.png'),
            title: TextWidget(
              text: 'Message',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          ListTile(
            onTap: () {},
            contentPadding: const EdgeInsets.only(left: 0),
            leading: Image.asset('assets/icons/car_face.png'),
            title: TextWidget(
              text: 'Add car',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Image.asset('assets/icons/clock.png'),
            title: TextWidget(
              text: 'History',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const Divider(
            indent: 15,
            endIndent: 15,
          )
        ],
      ),
    );
  }
}
