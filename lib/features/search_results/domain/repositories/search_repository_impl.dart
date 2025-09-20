import '../../domain/entities/bus_result.dart';
import '../../domain/repositories/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  @override
  Future<List<BusResult>> getResults(String from, String to, DateTime date) async {
    return [
      BusResult(
        firma: "Kamil Koç",
        logo: "https://seeklogo.com/images/K/kamil-koc-logo-70F62A4F1C-seeklogo.com.png",
        fiyat: 450,
        sure: "6s 15dk",
        kalkis: "08:00",
        varis: "14:15",
      ),
      BusResult(
        firma: "Metro Turizm",
        logo: "https://upload.wikimedia.org/wikipedia/commons/6/69/Metro_Turizm_logo.png",
        fiyat: 420,
        sure: "6s 45dk",
        kalkis: "09:30",
        varis: "16:15",
      ),
      BusResult(
        firma: "Pamukkale",
        logo: "https://upload.wikimedia.org/wikipedia/tr/1/15/Pamukkale_turizm_logo.png",
        fiyat: 400,
        sure: "7s 00dk",
        kalkis: "10:00",
        varis: "17:00",
      ),
    ];
  }
}
