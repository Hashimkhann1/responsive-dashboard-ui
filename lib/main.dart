import 'package:flutter/material.dart';
import 'package:responcive_dashboard_ui/const/constant.dart';
import 'package:responcive_dashboard_ui/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: MainScreen()
    );
  }
}