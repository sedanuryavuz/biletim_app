import 'package:biletim_app/core/constants/app_colors.dart';
import 'package:biletim_app/features/search_results/domain/enums/bus_feature.dart';
import 'package:biletim_app/features/search_results/presentation/extensions/bus_feature_ext.dart';
import 'package:flutter/material.dart';
import '../../../../core/enums/assets/app_images.dart';
import '../../domain/entities/bus_result.dart';

class ResultCard extends StatelessWidget {
  final BusResult result;
  final VoidCallback onSelect;

  const ResultCard({
    super.key,
    required this.result,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 6,
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    height: 70.0,
                    width: 70.0,
                    color: AppColors.primary,
                    child: Image.asset(
                      result.logo.path,
                      fit: BoxFit.cover,
                      color: AppColors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(result.firma,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 8),
                      Text("${result.kalkis} → ${result.varis}"),
                      const SizedBox(height: 4),
                      Text("Süre: ${result.sure}",
                          style: TextStyle(color: Colors.grey[600])),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("${result.fiyat} ₺",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        )),
                    const SizedBox(height: 12),
                    IconButton(
                      onPressed: onSelect,
                      icon: const Icon(Icons.chevron_right_outlined),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            height: 1,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 12,
              children: result.feature.map((f) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    f.icon,
                    const SizedBox(width: 4),
                    Text(f.label),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
