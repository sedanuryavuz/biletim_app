import 'package:biletim_app/core/enums/assets/app_images.dart';
import 'package:biletim_app/features/search_results/domain/enums/bus_feature.dart';

class BusResult {
  final String firma;
  final AppImages logo;
  final int fiyat;
  final String sure;
  final String kalkis;
  final String varis;
  final List<BusFeature> feature;

  const BusResult({
    required this.firma,
    required this.logo,
    required this.fiyat,
    required this.sure,
    required this.kalkis,
    required this.varis,
    required this.feature,
  });
}
