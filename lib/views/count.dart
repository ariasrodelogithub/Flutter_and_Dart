import 'package:flutter/material.dart';

class Contador extends StatelessWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(19, 255, 3, 179),
          title: const Text('hola mundo'),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
              Text('Number Push', style: TextStyle(fontSize: 30)),
              Text('01', style: TextStyle(fontSize: 30)),
            ])),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showMessage();
            },
            child: const Icon(
              Icons.color_lens_outlined,
            )

            //const Center(
            // child: Text('hola mundo counter',
            //style: TextStyle(backgroundColor: Color.fromARGB(19, 36, 1, 1))),
            ));
  }

  void showMessage() {
    print('hola');
  }
}
