import '../entities/bus_result.dart';

abstract class SearchRepository {
  Future<List<BusResult>> getResults(String from, String to, DateTime date);
}
