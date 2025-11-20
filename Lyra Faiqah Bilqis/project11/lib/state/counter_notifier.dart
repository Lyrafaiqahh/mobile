import 'package:flutter/material.dart';

class CounterNotifier extends ChangeNotifier {
  int value = 0;

  void increment() {
    value++;
    notifyListeners();
  }
}

class CounterInheritedNotifier extends InheritedNotifier<CounterNotifier> {
  const CounterInheritedNotifier({
    super.key,
    required CounterNotifier notifier,
    required super.child,
  }) : super(notifier: notifier);

  static CounterNotifier of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<CounterInheritedNotifier>()!
        .notifier!;
  }
}
