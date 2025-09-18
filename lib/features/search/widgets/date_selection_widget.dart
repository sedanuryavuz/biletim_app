import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/app_colors.dart';

class DateSelectionWidget extends StatefulWidget {
  final DateTime initialDate;
  final ValueChanged<DateTime> onDateSelected;

  const DateSelectionWidget({
    Key? key,
    required this.initialDate,
    required this.onDateSelected,
  }) : super(key: key);

  @override
  State<DateSelectionWidget> createState() => _DateSelectionWidgetState();
}

class _DateSelectionWidgetState extends State<DateSelectionWidget> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;
  }

  Future<void> _pickDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: AppColors.primary,
            colorScheme: const ColorScheme.light(
              primary: AppColors.primary,
              onPrimary: Colors.white,
            ),
            textTheme: GoogleFonts.latoTextTheme(),
          ),
          child: child!,
        );
      },
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() => _selectedDate = pickedDate);
      widget.onDateSelected(pickedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _pickDate,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 15,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Row(
          children: [
            const Icon(Icons.calendar_today, color: AppColors.accent, size: 28),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tarih Seç',
                    style: GoogleFonts.lato(
                        color: AppColors.textSecondary, fontSize: 14)),
                const SizedBox(height: 6),
                Text(
                  '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios,
                color: AppColors.textSecondary, size: 18),
          ],
        ),
      ),
    );
  }
}
