import 'package:expense_app/expense.dart';
import 'package:flutter/material.dart';

var kLightColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 129, 70, 231),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor:const Color.fromARGB(255, 48, 47, 48),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
              foregroundColor: kDarkColorScheme.onPrimaryContainer),
        ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kLightColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kLightColorScheme.onPrimaryContainer,
            foregroundColor: kLightColorScheme.primaryContainer),
        cardTheme: const CardTheme().copyWith(
          color: kLightColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kLightColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: kLightColorScheme.onSecondaryContainer,
              ),
            ),
      ),
      home: const Expenses(),
    );
  }
}
