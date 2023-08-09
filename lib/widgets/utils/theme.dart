import 'package:flutter/material.dart';
import 'package:road_mate_user/widgets/utils/color/app_colors.dart';

ThemeData theme() => ThemeData().copyWith(
      useMaterial3: true,
      primaryColor: Colors.black,
      textTheme: const TextTheme().copyWith(
        titleLarge: const TextStyle(
          fontFamily: 'Segoe UI',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.secondaryColor,
        ),
        titleMedium: const TextStyle(
          fontFamily: 'Segoe UI',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: const TextStyle(),
        bodyLarge: const TextStyle(),
        bodyMedium: const TextStyle(
          fontFamily: 'Segoe UI',
          fontSize: 16,
        ),
        bodySmall: const TextStyle(),
      ),
    );
