import 'dart:math';

import 'package:flutter/material.dart';

class HomePageTwo extends StatefulWidget {
  const HomePageTwo({super.key});

  @override
  State<HomePageTwo> createState() => _HomePageTwoState();
}

class _HomePageTwoState extends State<HomePageTwo> {
  int count = 0;
  List<String> lista = ["Lá ele", "Lá néle", "Lá eeeeele", "Lá néeeeele"];
  @override
  Widget build(BuildContext context) {
    int corA = Random().nextInt(255),
        corB = Random().nextInt(100),
        corC = Random().nextInt(255);

    return Scaffold(
      backgroundColor: Colors.white,
      // BARRA SUPERIOR DE TITULO
      appBar: AppBar(
        title: const Text(
          "Tropa do LÁ ELE!",
          style: TextStyle(color: Color.fromARGB(255, 246, 239, 239)),
        ),
        backgroundColor: Color.fromARGB(255, 6, 17, 237),
        centerTitle: true,
      ),
      /**
       * Brincando com estilos de texto
       */
      // body: const Center(
      //   child: Text("Olá mundo",
      //           style: TextStyle(color: Colors.black,
      //           fontSize: 30,
      //           fontWeight: FontWeight.bold,
      //           fontStyle: FontStyle.italic,
      //           letterSpacing: 5),
      //   ),
      // )
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${lista[Random().nextInt(lista.length)]} $count x",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, corB, corC, corA))),
            // IconButton(
            //   // ação do botão
            //     onPressed: () {
            //      // função que faz a tela atualizar
            //       //no momento que o botão é precionado.
            //       setState(() {
            //         count++;
            //       });
            //     },
            //     icon: const Icon(Icons.plus_one, size: 40)),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      Color.fromARGB(255, corB, corC, corA))),
              onPressed: () {
                setState(() {
                  count++;
                });
                /**
               * Se column é para coisas na vertical Row é para 
               * coisas na horizontal
               */
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "LÁ EEELE!!!!",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),

      /**
       * Botão redondo flutuante no canto inferior direito
       */
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
