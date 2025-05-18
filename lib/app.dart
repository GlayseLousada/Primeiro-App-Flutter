import 'package:flutter/material.dart';
import 'package:mobile_sales_app/home_screen.dart';

class MeuAppArgila extends StatelessWidget {
  const MeuAppArgila({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Artesanato em Argila',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFA0522D),
          primary: const Color(0xFFA0522D),
          secondary: const Color(0xFFE2725B),
          background: const Color(0xFFFFF8F0),
          surface: const Color(0xFFF5DEB3),
        ),
        scaffoldBackgroundColor: const Color(0xFFFFF8F0),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFA0522D),
          foregroundColor: Colors.white,
        ),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Color(0xFFFFF8F0),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFFA0522D)),
          bodyMedium: TextStyle(color: Color(0xFF8C7B6B)),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}