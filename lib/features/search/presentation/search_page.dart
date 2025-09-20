import 'package:biletim_app/core/constants/app_text_styles.dart';
import 'package:biletim_app/features/search/widgets/location_input_widget.dart';
import 'package:biletim_app/features/search/widgets/search_button.dart';
import 'package:biletim_app/features/search/widgets/date_selection_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/background_image.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  DateTime _selectedDate = DateTime.now();

  String selectedFrom = '';
  String selectedTo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          const BackgroundImage(),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Yeni Yolculuğunu Keşfet",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.headerText,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Otobüs biletinizi saniyeler içinde alın",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.headerBottomText,
                  ),
                  const SizedBox(height: 40),
                  LocationInput(
                    onFromSelected: (value) {
                      setState(() => selectedFrom = value!.name);
                    },
                    onToSelected: (value) {
                      setState(() => selectedTo = value!.name);
                    },
                  ),

                  const SizedBox(height: 20),
                  DateSelectionWidget(
                    initialDate: _selectedDate,
                    onDateSelected: (date) {
                      setState(() => _selectedDate = date);
                    },
                  ),
                  const SizedBox(height: 20),
                  SearchButton(
                    from: selectedFrom,
                    to: selectedTo,
                    date: _selectedDate,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
