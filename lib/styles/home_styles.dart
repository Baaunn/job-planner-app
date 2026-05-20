import 'package:flutter/material.dart';
import 'app_colors.dart';

class HomeStyles {
  BoxDecoration homeTheme = BoxDecoration(
    color: AppColors.background,
  );
  BoxDecoration homeBoxBorder = BoxDecoration(
    border: Border.all(color: AppColors.textMain, width: 2.5),
    borderRadius: BorderRadius.circular(10),
  );
  TextStyle homeTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textMain,
    height: 1.5
  );
}