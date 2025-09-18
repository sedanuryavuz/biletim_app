import 'package:biletim_app/features/search/enums/city.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

import 'dropdown_field_widget.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({super.key});

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  City? _selectedFrom;
  City? _selectedTo;

  final List<City> _cities = City.values;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
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
      child: Column(
        children: [
          DropdownField<City>(
            label: 'Nereden?',
            icon: Icons.flight_takeoff,
            value: _selectedFrom,
            items: _cities,
            onChanged: (value) => setState(() => _selectedFrom = value),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Divider(height: 1, color: AppColors.background),
          ),
          DropdownField<City>(
            label: 'Nereye?',
            icon: Icons.flight_land,
            value: _selectedTo,
            items: _cities,
            onChanged: (value) => setState(() => _selectedTo = value),
          ),
        ],
      ),
    );
  }
}
