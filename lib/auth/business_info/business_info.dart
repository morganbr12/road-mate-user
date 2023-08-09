import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:road_mate_user/widgets/buttons/primary_button.dart';
import 'package:road_mate_user/widgets/inputs/primary_input.dart';
import 'package:road_mate_user/widgets/routes/navigator.dart';
import 'package:road_mate_user/widgets/text/text.dart';
import 'package:road_mate_user/widgets/utils/color/app_colors.dart';

class BusinessInformation extends StatefulWidget {
  const BusinessInformation({super.key});

  @override
  State<BusinessInformation> createState() => _BusinessInformationState();
}

class _BusinessInformationState extends State<BusinessInformation> {
  // **************************************************************
  // this state is used to create the business information
  void createBusinessInformation() {
    secondaryNavigator(context, routeTo: '/view_business_info');
  }

  @override
  Widget build(BuildContext context) {
    const space = SizedBox(
      height: 20,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(
          color: AppColors.whiteColor,
        ),
        title: TextWidget(
          text: 'Road Mate',
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
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/car.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.68),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              left: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      TextWidget(
                        text: 'WHAT\'S YOUR RIDE?',
                        style: GoogleFonts.sourceSerifPro(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.primaryColor,
                            radius: 30,
                            child: CircleAvatar(
                              radius: 28,
                              backgroundColor: AppColors.whiteColor,
                              child: Icon(
                                Icons.call,
                                color: AppColors.primaryColor,
                                size: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                      space,
                      PrimaryInput(
                        hintText: 'Select Car Type',
                        prefixIcon: Image.asset('assets/icons/car.png'),
                        suffixIcon: GestureDetector(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                      space,
                      PrimaryInput(
                        hintText: 'Select Car Model',
                        prefixIcon: Image.asset('assets/icons/model.png'),
                        suffixIcon: GestureDetector(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                      space,
                      PrimaryInput(
                        hintText: 'Select Year Model',
                        prefixIcon: Image.asset('assets/icons/calender.png'),
                        suffixIcon: const Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 40,
                          ),
                        ),
                      ),
                      space,
                      PrimaryInput(
                        hintText: 'Enter Plate Number',
                        prefixIcon: Image.asset('assets/icons/car_number.png'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 80.0),
                  child: PrimaryButton(
                    text: 'SUBMIT',
                    foregroundColor: AppColors.whiteColor,
                    backgroundColor: AppColors.primaryColor,
                    textStyle: Theme.of(context).textTheme.titleMedium,
                    onPressed: createBusinessInformation,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
