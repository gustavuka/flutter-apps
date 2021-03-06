import 'package:DevQuiz/home/widgets/level_button/level_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/appbar/app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LevelButtonWidget(label: "Fácil"),
            LevelButtonWidget(label: "Médio"),
            LevelButtonWidget(label: "Difícil"),
            LevelButtonWidget(label: "Perito"),
          ],
        ),
      ),
    );
  }
}
