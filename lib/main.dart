import 'package:first_app/data/notifiers.dart';
import 'package:first_app/views/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String? title = 'Flutter Maps';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: (isDarkMode ? Brightness.dark : Brightness.light),
            ),
          ),
          home: WidgetTree(),
        );
      },
    );
  }
}
