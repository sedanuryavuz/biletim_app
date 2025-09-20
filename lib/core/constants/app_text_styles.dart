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
  static final TextStyle headerText = GoogleFonts.montserrat(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );
  static final TextStyle headerBottomText = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.white70,
  );

  static final TextStyle inputText = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );
  static final TextStyle selectedText = GoogleFonts.montserrat(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );
  static TextStyle hintText({Color? color, double fontSize = 16}) {
    return GoogleFonts.lato(
      color: color ?? AppColors.textSecondary,
      fontSize: fontSize,
    );

  }
}