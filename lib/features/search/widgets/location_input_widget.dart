import 'package:biletim_app/features/search/enums/city.dart';
import 'package:flutter/material.dart';

import 'dropdown_field_widget.dart';

class LocationInput extends StatefulWidget {
  final ValueChanged<City?>? onFromSelected;
  final ValueChanged<City?>? onToSelected;

  const LocationInput({super.key, this.onFromSelected, this.onToSelected});

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  City? _selectedFrom;
  City? _selectedTo;

  final List<City> _cities = City.values;

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white.withOpacity(0.20),
      borderRadius: BorderRadius.circular(16),
      border: Border.all(
        color: Colors.white.withOpacity(0.3),
        width: 1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: _boxDecoration(),
          child: DropdownField<City>(
            label: 'Nereden?',
            icon: Icons.location_on,
            value: _selectedFrom,
            items: _cities,
            onChanged: (value) {
              setState(() => _selectedFrom = value);
              if (widget.onFromSelected != null) widget.onFromSelected!(value);
            },
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: _boxDecoration(),
          child: DropdownField<City>(
            label: 'Nereye?',
            icon: Icons.backpack_rounded,
            value: _selectedTo,
            items: _cities,
            onChanged: (value) {
              setState(() => _selectedTo = value);
              if (widget.onToSelected != null) widget.onToSelected!(value);
            },
          ),
        ),
      ],
    );
  }
}
