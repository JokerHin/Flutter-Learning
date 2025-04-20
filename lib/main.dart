import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// stateless widget
// material app
// scaffold

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Maps'),
          centerTitle: true,
          backgroundColor: Colors.teal,
          actions: [
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          ],
        ),
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
            SizedBox(height: 10),
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Person'),
          ],
          onDestinationSelected: (int value) {
            print(value);
          },
        ),
      ),
    );
  }
}
