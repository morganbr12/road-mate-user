import 'package:flutter/material.dart';
import 'package:road_mate_user/widgets/utils/color/app_colors.dart';

class PrimaryInput extends StatelessWidget {
  const PrimaryInput({
    required this.hintText,
    this.controller,
    this.validator,
    this.prefixIcon,
    this.contentpadding,
    this.suffixIcon,
    this.fillColor,
    this.onTap,
    this.onChanged,
    super.key,
  });

  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentpadding;
  final Color? fillColor;
  final Function()? onTap;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onTap: onTap,
      onChanged: onChanged,
      cursorColor: AppColors.secondaryColor,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: AppColors.secondaryColor,
          ),
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: fillColor,
        hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: AppColors.textiaryColor.shade500,
            ),
        suffixIcon: suffixIcon,
        contentPadding: contentpadding,
        prefixIcon: prefixIcon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            color: AppColors.textiaryColor.shade300,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            color: AppColors.textiaryColor.shade300,
          ),
        ),
      ),
    );
  }
}
