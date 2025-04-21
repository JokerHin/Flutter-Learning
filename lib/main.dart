import 'package:first_app/views/widget_tree.dart';
import 'package:first_app/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String? title = 'Flutter Maps';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: WidgetTree(),
    );
  }
}
