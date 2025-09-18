import 'package:biletim_app/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static final TextStyle appName = GoogleFonts.montserrat(
    fontSize: 48,
    fontWeight: FontWeight.w800,
    color: AppColors.white,
    letterSpacing: 2,
  );
  static final TextStyle appSecondaryText = GoogleFonts.lato(
    fontSize: 20,
    color: AppColors.white70,
  );
}