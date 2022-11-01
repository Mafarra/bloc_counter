import 'package:flutter/material.dart';

import 'counter/counter.dart';

class CounterApp extends MaterialApp {
  const CounterApp({super.key}) : super(
    debugShowCheckedModeBanner: false,
    home: const CounterPage());
    
}
