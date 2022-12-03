import 'package:flutter/material.dart';

class AleitamentoCarie extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Aleitamento e cárie dentária'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 238, 149, 161),
        ),
        body: botao(),
      );
}

Widget botao() {
  return Container(
    alignment: Alignment.center,
    child: Column(
      children: [
        SizedBox(
          height: 80,
        ),
        ElevatedButton.icon(
          // <-- ElevatedButton
          onPressed: () {},
          icon: Icon(
            Icons.download,
            size: 50.0,
          ),
          label: Text('Download'),
        ),
        TextButton.icon(
          // <-- TextButton
          onPressed: () {},
          icon: Icon(
            Icons.download,
            size: 24.0,
          ),
          label: Text('Download'),
        ),
        OutlinedButton.icon(
          // <-- OutlinedButton
          onPressed: () {},
          icon: Icon(
            Icons.download,
            size: 24.0,
          ),
          label: Text('Download'),
        ),
      ],
    ),
  );
}
