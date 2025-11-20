import 'package:flutter/material.dart';
import 'models/app_settings.dart';
import 'state/settings_inherited.dart';
import 'state/counter_notifier.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    SettingsInherited(
      settings: AppSettings(),
      child: CounterInheritedNotifier(
        notifier: CounterNotifier(),
        child: const LyraApp(),
      ),
    ),
  );
}

class LyraApp extends StatelessWidget {
  const LyraApp({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = SettingsInherited.of(context).settings;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: settings.backgroundColor,
      ),
      home: const HomeScreen(),
    );
  }
}
