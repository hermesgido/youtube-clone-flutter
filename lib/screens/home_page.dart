import 'package:flutter/material.dart';
import 'package:youtube/widgets/app_bar.dart';
import 'package:youtube/widgets/bottom_menu.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyAppBar(),
          ],
        ),
      ),
    );
  }
}
