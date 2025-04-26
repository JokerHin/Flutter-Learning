import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.teal,
                    height: 20.0,
                    child: Center(child: Text('Expanded ')),
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.orange,
                    height: 20.0,
                    child: Center(child: Text('Flexible ')),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Flexible(
                  child: Container(
                    color: Colors.orange,
                    height: 20.0,
                    child: Center(child: Text('Flexible ')),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.teal,
                    height: 20.0,
                    child: Center(child: Text('Expanded ')),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
