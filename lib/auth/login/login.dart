import 'package:flutter/material.dart';
import 'package:road_mate_user/widgets/buttons/custom_button.dart';
import 'package:road_mate_user/widgets/buttons/primary_button.dart';
import 'package:road_mate_user/widgets/buttons/secondary_button.dart';
import 'package:road_mate_user/widgets/dimension/dimension.dart';
import 'package:road_mate_user/widgets/inputs/primary_input.dart';
import 'package:road_mate_user/widgets/routes/navigator.dart';
import 'package:road_mate_user/widgets/text/text.dart';
import 'package:road_mate_user/widgets/utils/color/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SizedBox(
            width: screenSize(context).width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 72,
                  width: 72,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('assets/logo/car_logo.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset('assets/logo/road_mate.png'),
                const SizedBox(
                  height: 20,
                ),
                TextWidget(
                  text: 'Sign In',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                PrimaryInput(
                  hintText: 'Email',
                  prefixIcon: Image.asset('assets/icons/letter.png'),
                ),
                const SizedBox(
                  height: 15,
                ),
                PrimaryInput(
                  hintText: 'Password',
                  prefixIcon: Image.asset('assets/icons/key.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                PrimaryButton(
                  text: 'Continue',
                  foregroundColor: AppColors.whiteColor,
                  backgroundColor: AppColors.secondaryColor,
                  textStyle: Theme.of(context).textTheme.titleMedium,
                  onPressed: () {
                    primaryNavigator(context, routeTo: '/home');
                  },
                ),
                Row(
                  children: [
                    SizedBox(
                      width: screenSize(context).width * 0.38,
                      child: Divider(
                        color: AppColors.textiaryColor.shade300,
                        height: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextWidget(
                        text: 'OR',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: AppColors.textiaryColor,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize(context).width * 0.38,
                      child: Divider(
                        color: AppColors.textiaryColor.shade300,
                        height: 2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  'Continue with Apple',
                  icon: Image.asset('assets/icons/apple-logo.png'),
                  color: AppColors.lightGrey,
                  onTap: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  'Continue with Google',
                  icon: Image.asset('assets/icons/google.png'),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(217, 63, 33, 0.23),
                      Color.fromRGBO(255, 75, 38, 0.23),
                      Color.fromRGBO(255, 213, 0, 0.23),
                      Color.fromRGBO(18, 179, 71, 0.23),
                      Color.fromRGBO(18, 146, 102, 0.23),
                      Color.fromRGBO(22, 126, 230, 0.23),
                    ],
                  ),
                  onTap: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  'Continue with Facebook',
                  icon: Image.asset('assets/icons/facebook.png'),
                  color: AppColors.lightblue,
                  onTap: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: 'You don\'t have an account?',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondaryColor,
                          ),
                    ),
                    SecondaryButton(
                      'Sign up',
                      onPressed: () {
                        primaryNavigator(context, routeTo: '/register');
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
    );
  }
}
