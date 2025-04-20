import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String? title = 'Flutter Maps';

// stateless widget
// material app
// scaffold

// stateful widget "can refresh the page"
// stateless widget "can't refresh the page"
// setState "is used to refresh the page"

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: [IconButton(icon: const Icon(Icons.search), onPressed: () {})],
      ),
      body:
          currentIndex == 0
              ? const Center(child: Text('Home'))
              : const Center(child: Text('Person')),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Text('Header')),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Person'),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Person'),
        ],
        onDestinationSelected: (int value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedIndex: currentIndex,
      ),
    );
  }
}
