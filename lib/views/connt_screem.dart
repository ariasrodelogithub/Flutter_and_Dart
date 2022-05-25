import 'dart:math';

import 'package:flutter/material.dart';

class ContadorScreen extends StatefulWidget {
  const ContadorScreen({Key? key}) : super(key: key);

  @override
  State<ContadorScreen> createState() => _ContadorState();
}

class _ContadorState extends State<ContadorScreen> {
  int counter = 0;
  change_color_text() {
    if (counter % 2 == 0) {
      return Colors.primaries[Random().nextInt(Colors.primaries.length)];
    } else {
      Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    const mi_estilo = TextStyle(
      fontSize: 30,
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(19, 255, 3, 179),
          title: const Text('hola mundo'),
          elevation: 15.5,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Number Push', style: mi_estilo),
              Text('$counter', style: mi_estilo),
              Text(
                'change color',
                style: TextStyle(color: change_color_text(), fontSize: 30),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showMessage();
              setState(() {
                counter++;
              });
            },
            child: const Icon(
              Icons.color_lens_outlined,
            )));
  }

  void showMessage() {
    print('hola');
  }
}
