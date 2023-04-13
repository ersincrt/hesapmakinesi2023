import 'package:flutter/material.dart';
import 'package:hesapmakinesi2023/ev_sayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hesap Makinesi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const EvSayfasi(),
    );
  }
}
