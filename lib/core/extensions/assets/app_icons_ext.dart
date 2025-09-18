import 'package:flutter/material.dart';

import '../../enums/assets/app_icons.dart';

extension AppIconsExtension on AppIcons {
  Icon widget({Color? color, double size = 24}) {
    return Icon(
      icon,
      color: color,
      size: size,
    );
  }
}
