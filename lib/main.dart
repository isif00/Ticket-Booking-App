import 'package:booking_app/screens/bottom_bar.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Booking App',
      theme: ThemeData(
        primaryColor: Styles.primaryColor,
      ),
      home: const BottomBar(),
    );
  }
}
