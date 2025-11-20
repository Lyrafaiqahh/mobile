import 'package:flutter/material.dart';
import '../models/app_settings.dart';

class SettingsInherited extends InheritedWidget {
  final AppSettings settings;

  const SettingsInherited({
    super.key,
    required this.settings,
    required super.child,
  });

  static SettingsInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SettingsInherited>()!;
  }

  @override
  bool updateShouldNotify(covariant SettingsInherited oldWidget) {
    return oldWidget.settings != settings;
  }
}
