import 'package:flutter/material.dart';

import '../../domain/enums/bus_feature.dart';

extension BusFeatureExtension on BusFeature {
  String get label {
    switch (this) {
      case BusFeature.wifi:
        return "Wi-Fi";
      case BusFeature.tv:
        return "TV";
      case BusFeature.usb:
        return "USB";
      case BusFeature.klima:
        return "Klima";
    }
  }

  Icon get icon {
    switch (this) {
      case BusFeature.wifi:
        return const Icon(Icons.wifi, color: Colors.blue);
      case BusFeature.tv:
        return const Icon(Icons.tv, color: Colors.deepPurple);
      case BusFeature.usb:
        return const Icon(Icons.usb, color: Colors.orange);
      case BusFeature.klima:
        return const Icon(Icons.ac_unit, color: Colors.lightBlue);
    }
  }
}
