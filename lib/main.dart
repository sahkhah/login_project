import 'package:flutter/material.dart';
import 'package:login_project/src/features/authentication/screens/dashboard/dashboard_screen.dart';
import 'package:login_project/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:login_project/src/utils/theme/apptheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const DashboardScreen(),
    );
  }
}



