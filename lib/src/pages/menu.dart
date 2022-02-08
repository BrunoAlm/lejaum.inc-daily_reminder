import 'dart:ui';

import 'package:daily_reminder/src/services/colors.dart';
import 'package:flutter/cupertino.dart';
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
      body: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.width * 0.99,
            child: Image.asset(
              "assets/images/lembrete1.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 60,
            left: 20,
            right: 20,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.7,
                  decoration: BoxDecoration(
                    color: cores.quaseBlack.withOpacity(0.5),
                  ),
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          'Lembrete Diário',
                          style: TextStyle(
                            color: cores.quaseWhite,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'lejaum.me',
                          style: TextStyle(
                            color: cores.quaseBlack,
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        const SizedBox(height: 60),
                        Text(
                          'Arvores fortes\ncrescem com\nventos fortes.',
                          style: TextStyle(
                            color: cores.quaseWhite,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 60),
                        // const Expanded(child: SizedBox()),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Estou ciente e quero continuar'),
                                SizedBox(width: 3),
                                Icon(Icons.subdirectory_arrow_right_rounded),
                              ],
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  const StadiumBorder()),
                            ),
                          ),
                        ),
                        // Expanded(child: Container()),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Desejo continuar na mesmicie'),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                cores.quaseBlack.withOpacity(0)),
                            shape: MaterialStateProperty.all(
                                const StadiumBorder()),
                          ),
                        ),
                        const SizedBox(height: 60),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
