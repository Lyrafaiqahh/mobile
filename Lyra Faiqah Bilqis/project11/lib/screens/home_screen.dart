import 'package:flutter/material.dart';
import '../state/settings_inherited.dart';
import '../state/counter_notifier.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = SettingsInherited.of(context).settings;
    final counter = CounterInheritedNotifier.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              settings.greeting,
              style: TextStyle(
                fontSize: settings.fontSize,
                color: settings.textColor,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Counter: ${counter.value}",
              style: const TextStyle(fontSize: 28),
            ),
            ElevatedButton(
              onPressed: () {
                counter.increment();
              },
              child: const Text("Tambah"),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const DetailScreen()),
                );
              },
              child: const Text("Pergi ke Halaman Detail"),
            ),
          ],
        ),
      ),
    );
  }
}
