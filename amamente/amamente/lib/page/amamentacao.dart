import 'package:flutter/material.dart';

class Amamentacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Ordenha Do seio'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 238, 149, 161),
        ),
        body: botao(),
      );
}

Widget botao() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      IconButton(
          icon: const Icon(Icons.volume_up),
          tooltip: 'Increase volume by 10',
          onPressed: () {}),
    ],
  );
}
