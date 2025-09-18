import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/app_colors.dart';


class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {

      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.accent,
        padding: const EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 8,
        shadowColor: AppColors.accent.withOpacity(0.4),
      ),
      child: Text(
        'Bilet Ara',
        style: GoogleFonts.montserrat(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
