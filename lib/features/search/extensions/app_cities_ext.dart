import 'package:biletim_app/features/search/enums/city.dart';

extension AppCitiesExtension on City {
  String get displayName {
    switch (this) {
      case City.istanbul:
        return "İstanbul";
      case City.ankara:
        return "Ankara";
      case City.izmir:
        return "İzmir";
      case City.bursa:
        return "Bursa";
    }
  }
}
