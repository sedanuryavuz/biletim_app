import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/app_colors.dart';


class SearchButton extends StatelessWidget {
  final String from;
  final String to;
  final DateTime date;

  const SearchButton({
    super.key,
    required this.from,
    required this.to,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.go(
          '/results?from=$from&to=$to&date=${date.toIso8601String()}',
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.button,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 145),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 8,
        shadowColor: AppColors.button.withOpacity(0.4),
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

