import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(22, 255, 230, 0),
          title: const Text('hola mundo'),
        ),
        body: const Center(
          child: Text('hola mundo',
              style: TextStyle(backgroundColor: Color.fromARGB(20, 252, 9, 9))),
        ));
  }
}
