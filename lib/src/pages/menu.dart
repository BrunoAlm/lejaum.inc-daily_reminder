import 'package:daily_reminder/src/services/colors.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);
  final Cores cores = Cores();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cores.quaseWhite,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Lembretes',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
