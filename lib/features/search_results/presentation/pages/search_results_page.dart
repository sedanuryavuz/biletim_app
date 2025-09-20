import 'package:flutter/material.dart';

import '../../domain/entities/bus_result.dart';
import '../../domain/usecases/get_search_results.dart';
import '../widgets/result_card.dart';

class SearchResultsPage extends StatelessWidget {
  final String from;
  final String to;
  final DateTime date;
  final GetSearchResults getSearchResults;

  const SearchResultsPage({
    super.key,
    required this.from,
    required this.to,
    required this.date,
    required this.getSearchResults,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$from → $to | ${date.day}/${date.month}/${date.year}"),
      ),
      body: FutureBuilder<List<BusResult>>(
        future: getSearchResults(from, to, date),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return const Center(child: Text("Bir hata oluştu."));
          }

          final results = snapshot.data ?? [];

          return ListView.builder(
            itemCount: results.length,
            padding: const EdgeInsets.all(16),
            itemBuilder: (context, index) {
              return ResultCard(
                result: results[index],
                onSelect: () {
                  // Koltuk seçimi/ödeme ekranına gidecek
                },
              );
            },
          );
        },
      ),
    );
  }
}
