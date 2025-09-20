import 'package:flutter/material.dart';
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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: Colors.grey[200],
              backgroundImage: NetworkImage(result.logo),
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
                        color: Colors.green)),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: onSelect,
                  child: const Text("Seç"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
