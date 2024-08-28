import 'package:dioproject/appTreino/home_page_two.dart';
import 'package:flutter/material.dart';


class Material2 extends StatelessWidget {
  const Material2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Programa de estudos em flutter",
        theme: ThemeData(
          primaryColor: Colors.green,
          textTheme: const TextTheme(titleLarge: TextStyle(color: Colors.green)),
        ),
        home: const HomePageTwo()
      );
  }
}
