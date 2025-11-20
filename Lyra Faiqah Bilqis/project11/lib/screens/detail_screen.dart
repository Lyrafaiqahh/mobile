import 'package:flutter/material.dart';
import '../state/counter_notifier.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = CounterInheritedNotifier.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Halaman Detail")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Value Counter Saat Ini: ${counter.value}",
              style: const TextStyle(fontSize: 28),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                counter.increment();
              },
              child: const Text("Tambah Counter"),
            ),
          ],
        ),
      ),
    );
  }
}
