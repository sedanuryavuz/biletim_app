import 'package:biletim_app/core/enums/assets/app_images.dart';
import 'package:flutter/material.dart';

class SearchHeaderImage extends StatelessWidget {
  const SearchHeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          AppImages.bus1.path,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
