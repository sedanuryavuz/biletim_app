import 'package:biletim_app/core/enums/assets/app_images.dart';
import 'package:biletim_app/features/search_results/domain/enums/bus_feature.dart';

import '../../domain/entities/bus_result.dart';
import '../../domain/repositories/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  @override
  Future<List<BusResult>> getResults(String from, String to, DateTime date) async {
    return [
      BusResult(
        firma: "Kamil Koç",
        logo: AppImages.kamilkoc,
        fiyat: 450,
        sure: "6s 15dk",
        kalkis: "08:00",
        varis: "14:15",
        feature: [BusFeature.usb,BusFeature.wifi],
      ),
      BusResult(
        firma: "Metro Turizm",
        logo: AppImages.metroturizm,
        fiyat: 420,
        sure: "6s 45dk",
        kalkis: "09:30",
        varis: "16:15",
        feature: [BusFeature.klima,BusFeature.wifi],
      ),
      BusResult(
        firma: "Pamukkale",
        logo: AppImages.pamukkaleturizm,
        fiyat: 400,
        sure: "7s 00dk",
        kalkis: "10:00",
        varis: "17:00",
        feature: [BusFeature.klima,BusFeature.tv],

      ),
    ];
  }
}
