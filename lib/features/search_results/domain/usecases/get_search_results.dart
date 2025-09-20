import '../entities/bus_result.dart';
import '../repositories/search_repository.dart';

class GetSearchResults {
  final SearchRepository repository;

  GetSearchResults(this.repository);

  Future<List<BusResult>> call(String from, String to, DateTime date) {
    return repository.getResults(from, to, date);
  }
}
