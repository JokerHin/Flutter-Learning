import 'package:first_app/views/widgets/container_widget.dart';
import 'package:first_app/views/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'Flutter mapp'),
            Column(
              children: List.generate(5, (index) {
                return ContainerWidget(
                  title: "Hello",
                  description: "good to write description",
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
