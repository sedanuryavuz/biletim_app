import 'package:biletim_app/features/search/widgets/location_input_widget.dart';
import 'package:biletim_app/features/search/widgets/search_button.dart';
import 'package:biletim_app/features/search/widgets/date_selection_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/search_header_image_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Biletini Bul',
          style: GoogleFonts.montserrat(fontWeight: FontWeight.w700),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SearchHeaderImage(),
            const SizedBox(height: 20),
            const LocationInput(),
            const SizedBox(height: 28),

            DateSelectionWidget(
              initialDate: _selectedDate,
              onDateSelected: (date) {
                setState(() => _selectedDate = date);
              },
            ),

            const SizedBox(height: 28),
            const SearchButton(),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
