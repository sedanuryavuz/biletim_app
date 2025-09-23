import 'package:biletim_app/features/search_results/domain/enums/bus_feature.dart';

import '../../domain/entities/bus_result.dart';

class BusResultModel extends BusResult {
  const BusResultModel({
    required super.firma,
    required super.logo,
    required super.fiyat,
    required super.sure,
    required super.kalkis,
    required super.varis,
    required super.feature,
  });

  factory BusResultModel.fromJson(Map<String, dynamic> json) {
    return BusResultModel(
      firma: json['firma'],
      logo: json['logo'],
      fiyat: json['fiyat'],
      sure: json['sure'],
      kalkis: json['kalkis'],
      varis: json['varis'],
      feature: [BusFeature.wifi, BusFeature.usb, BusFeature.tv,BusFeature.klima],
    );
  }
}
