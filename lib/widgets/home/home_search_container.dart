import 'package:flutter/material.dart';
import 'package:road_mate_user/widgets/dimension/dimension.dart';
import 'package:road_mate_user/widgets/inputs/primary_input.dart';
import 'package:road_mate_user/widgets/text/text.dart';
import 'package:road_mate_user/widgets/utils/color/app_colors.dart';

class HomeSearchContainer extends StatefulWidget {
  const HomeSearchContainer({
    required this.showIconsInPrimaryInput,
    required this.show,
    super.key,
  });

  final Function(String) showIconsInPrimaryInput;
  final bool show;

  @override
  State<HomeSearchContainer> createState() => _HomeSearchContainerState();
}

class _HomeSearchContainerState extends State<HomeSearchContainer> {
  final _scrollController = ScrollController();
  bool isHidden = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize(context).height * 0.45,
      width: screenSize(context).width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: AppColors.whiteColor,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Divider(
                height: 2,
                thickness: 5,
                color: AppColors.textiaryColor,
                indent: screenSize(context).width * 0.35,
                endIndent: screenSize(context).width * 0.35,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: PrimaryInput(
                hintText: 'How may we help you?',
                // contentpadding: EdgeInsets.all(10),
                onChanged: widget.showIconsInPrimaryInput,
                fillColor: AppColors.textiaryColor.shade200,
                prefixIcon: !widget.show
                    ? Padding(
                        padding: const EdgeInsets.only(right: 8.0, left: 8),
                        child: InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor: AppColors.textiaryColor.shade300,
                            child: Image.asset('assets/icons/search.png'),
                          ),
                        ),
                      )
                    : null,
                suffixIcon: !widget.show
                    ? Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.access_time_filled),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: AppColors.secondaryColor,
                            backgroundColor: AppColors.whiteColor,
                            elevation: 0,
                          ),
                          label: const Text('Now'),
                        ),
                      )
                    : null,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return;
                  }
                  return null;
                },
              ),
            ),
            if (widget.show == false)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InsideHomeContainerWidget(
                        onTap: () {},
                        image: 'assets/images/battery.png',
                        text: 'Battery',
                      ),
                      InsideHomeContainerWidget(
                        onTap: () {},
                        image: 'assets/images/toll-truck.png',
                        text: 'Battery',
                      ),
                      InsideHomeContainerWidget(
                        onTap: () {},
                        image: 'assets/images/tyre.png',
                        text: 'Battery',
                      ),
                    ],
                  ),
                  ListView.builder(
                    itemCount: 3,
                    padding: const EdgeInsets.all(0),
                    controller: _scrollController,
                    shrinkWrap: true,
                    itemBuilder: (ctx, i) {
                      return ListTile(
                        leading: Image.asset('assets/icons/batt.png'),
                        title: Text(
                          'W&C Battery Shop',
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: AppColors.secondaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        subtitle: Text(
                          '14 Manu, Westland, Accra',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: AppColors.textiaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      );
                    },
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}

// container inside the home container

class InsideHomeContainerWidget extends StatelessWidget {
  const InsideHomeContainerWidget({
    required this.text,
    this.onTap,
    required this.image,
    super.key,
  });

  final Function()? onTap;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: screenSize(context).height * 0.13,
        width: screenSize(context).width * 0.27,
        decoration: BoxDecoration(
          color: AppColors.textiaryColor.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image),
            const SizedBox(
              height: 5,
            ),
            TextWidget(
              text: text,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: AppColors.secondaryColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
