import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String name = "John Doe";
int age = 30;
double height = 1.75;
bool isStudent = true;
List hobbies = ["Reading", "Traveling", "Gaming"];
Map<String, dynamic> person = {
  "name": name,
  "age": age,
  "height": height,
  "isStudent": isStudent,
  "hobbies": hobbies,
};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(title: 'I Love Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Image.asset(
        'assets/images/background.jpg',
        height: double.infinity,
        fit: BoxFit.cover,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
