import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:amamente/widget/Menu_Superior.dart';
import 'package:amamente/page/amamentacao.dart';
import 'package:amamente/page/ordenha_seio.dart';
import 'package:amamente/page/cuidados_recem.dart';
import 'package:amamente/page/sobre_nos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String istapped = '';
  double x = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuSuperior(),
      appBar: AppBar(
        title: const Text('Amamente Com amor'),
        backgroundColor: Color.fromARGB(255, 238, 149, 161),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [
                GestureDetector(
                  onTap: () => selectedItemPrincipal(context, 0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(50),
                    height: 200,
                    color: Color.fromARGB(255, 202, 123, 134),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/logo.png',
                          height: 45,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Amamentação',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => selectedItemPrincipal(context, 1),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(50),
                    height: 200,
                    color: Color.fromARGB(255, 245, 142, 156),
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/images/logo.png'),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Ordenha de Leite do seio',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => selectedItemPrincipal(context, 2),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(40),
                    height: 200,
                    color: Color.fromARGB(255, 241, 164, 174),
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/images/logo.png'),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Cuidados com o recém-nascido',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => selectedItemPrincipal(context, 3),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(50),
                    height: 200,
                    color: Color.fromARGB(255, 247, 174, 184),
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/images/logo.png'),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Sobre nós',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
          ),
          Container(
              height: 50,
              color: Color.fromARGB(255, 230, 163, 172),
              child: Center(
                  child: Text("Projeto Uenp",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)))),
        ],
      ),
    );
  }
}

void selectedItemPrincipal(BuildContext context, int index) {
  Navigator.of(context).pop();

  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Amamentacao(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => OrdenhaSeio(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => CuidadosRecem(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SobreNos(),
      ));
      break;
  }
}
