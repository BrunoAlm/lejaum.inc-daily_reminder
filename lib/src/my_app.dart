import 'package:daily_reminder/src/pages/loading.dart';
import 'package:daily_reminder/src/services/colors.dart';
import 'package:flutter/material.dart';

import 'pages/menu.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Cores cores = Cores();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Mensagens Diárias',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // primarySwatch: Colors.indigo,
        colorScheme: ColorScheme.light(
          primary: cores.laranjaum,
          background: Colors.white.withOpacity(0.8),
        ),

        appBarTheme: AppBarTheme(
          // elevation: 3,
          shadowColor: cores.laranjaum,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Loading(),
        '/Menu': (context) => Menu(),
      },
    );
  }
}
