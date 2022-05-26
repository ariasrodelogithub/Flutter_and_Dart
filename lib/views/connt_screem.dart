import 'dart:math';

import 'package:flutter/material.dart';

class ContadorScreen extends StatefulWidget {
  const ContadorScreen({Key? key}) : super(key: key);

  @override
  State<ContadorScreen> createState() => _ContadorState();
}

class _ContadorState extends State<ContadorScreen> {
  int counter = 0;

  void increment() {
    counter++;
    setState(() {});
  }

  void decrement() {
    counter--;
    setState(() {});
  }

  void restart() {
    counter = 0;
    setState(() {});
  }

  // ignore: non_constant_identifier_names
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
        floatingActionButton: CustomFloatingActionButtonLocation(
          increaseFn: increment,
          decreaseFn: decrement,
          restarFn: restart,
        ));
  }

  void showMessage() {
    print('hola');
  }
}

class CustomFloatingActionButtonLocation extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function restarFn;

  const CustomFloatingActionButtonLocation({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.restarFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FloatingActionButton(
            child: const Icon(Icons.add), onPressed: () => increaseFn()),
        FloatingActionButton(
            child: const Icon(Icons.restart_alt), onPressed: () => restarFn()),
        FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1),
            onPressed: () => decreaseFn()),
      ],
    );
  }
}
