import 'package:biletim_app/core/constants/app_text_styles.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../enums/city.dart';

class DropdownField<T> extends StatelessWidget {
  final String label;
  final T? value;
  final List<T> items;
  final ValueChanged<T?>? onChanged;
  final IconData icon;

  const DropdownField({
    super.key,
    required this.label,
    required this.value,
    required this.items,
    required this.onChanged,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: AppColors.accent, size: 28),
        const SizedBox(width: 16),
        Expanded(
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<T>(
              isExpanded: true,
              hint: Text(label, style: AppTextStyles.hintText()),
              value: value,
              items: items.map((T item) {
                final String text = (item is City)
                    ? item.label
                    : item.toString();

                return DropdownMenuItem<T>(
                  value: item,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      text,
                      style:
                          AppTextStyles.hintText(
                            color: AppColors.textPrimary,
                          ).copyWith(
                            fontSize: 16,
                            fontWeight: (item == value)
                                ? FontWeight.w600
                                : FontWeight.w400,
                            color: (item == value)
                                ? AppColors.primary
                                : AppColors.textPrimary,
                          ),
                    ),
                  ),
                );
              }).toList(),
              onChanged: onChanged,

              dropdownStyleData: DropdownStyleData(
                maxHeight: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26.withOpacity(0.08),
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(vertical: 6),
              ),

              iconStyleData: IconStyleData(
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppColors.primary,
                ),
                iconSize: 28,
              ),

              menuItemStyleData: const MenuItemStyleData(
                height: 48,
                padding: EdgeInsets.symmetric(horizontal: 12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
