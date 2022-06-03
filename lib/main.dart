import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:design/screens/home_screen.dart';
import 'package:design/screens/scroll_design.dart';
import 'package:design/screens/basic_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Para colocar la barra de arriba (hora, bateria, etc) de color blanco o negro
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (_) => const BasicDesignScreen(),
        'scroll_design': (_) => const ScrollDesignScreen(),
        'home_screen': (_) => const HomeScreen(),
      },
    );
  }
}
