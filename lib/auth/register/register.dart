import 'package:flutter/material.dart';
import 'package:road_mate_user/widgets/buttons/primary_button.dart';
import 'package:road_mate_user/widgets/inputs/primary_input.dart';
import 'package:road_mate_user/widgets/routes/navigator.dart';
import 'package:road_mate_user/widgets/text/text.dart';
import 'package:road_mate_user/widgets/utils/color/app_colors.dart';

import '../../widgets/buttons/secondary_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    const space = SizedBox(
      height: 20,
    );
    const sp = SizedBox(
      height: 10,
    );
// ****************************************************************
// rigerster the rider and move to the business information page
// ****************************************************************
    void _proceed() {
      secondaryNavigator(context, routeTo: '/add_business_info');
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 72,
                        width: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.primaryColor,
                        ),
                        child: Image.asset('assets/logo/car_logo.png'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/logo/road_mate.png')
                    ],
                  ),
                  space,
                  TextWidget(
                    text: 'Sign Up',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  space,
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset('assets/images/dotted-circle.png'),
                          Image.asset('assets/images/person.png'),
                        ],
                      ),
                      Container(
                        height: 42,
                        width: 42,
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.whiteColor,
                        ),
                        child: const CircleAvatar(
                          backgroundColor: AppColors.deepBlue,
                          child: Icon(Icons.edit),
                        ),
                      ),
                    ],
                  ),
                  space,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'First Name',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.w400,
                                ),
                      ),
                      sp,
                      PrimaryInput(
                        hintText: 'First name',
                        // contentpadding: EdgeInsets.only(left: 0),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      space,
                      TextWidget(
                        text: 'Last Name',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.w400,
                                ),
                      ),
                      sp,
                      PrimaryInput(
                        hintText: 'Last name',
                        // contentpadding: EdgeInsets.only(left: 0),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      space,
                      TextWidget(
                        text: 'Email',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.w400,
                                ),
                      ),
                      sp,
                      PrimaryInput(
                        hintText: 'Enter email...',
                        suffixIcon: Image.asset('assets/icons/letter.png'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      space,
                      TextWidget(
                        text: 'Password',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.w400,
                                ),
                      ),
                      sp,
                      PrimaryInput(
                        hintText: '***************',
                        suffixIcon: Image.asset('assets/icons/key.png'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      space,
                      TextWidget(
                        text: 'Confirm Password',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.w400,
                                ),
                      ),
                      sp,
                      PrimaryInput(
                        hintText: '***************',
                        suffixIcon: Image.asset('assets/icons/key.png'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  space,
                  PrimaryButton(
                    text: 'Proceed',
                    foregroundColor: AppColors.whiteColor,
                    backgroundColor: AppColors.secondaryColor,
                    textStyle: Theme.of(context).textTheme.titleMedium,
                    onPressed: _proceed,
                  ),
                  sp,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: 'You don\'t have an account?',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.secondaryColor,
                                ),
                      ),
                      SecondaryButton(
                        'Sign In',
                        onPressed: () {
                          primaryNavigator(context, routeTo: '/login');
                        },
                        textStyle:
                            Theme.of(context).textTheme.titleLarge!.copyWith(
                                  color: AppColors.deepBlue,
                                ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
