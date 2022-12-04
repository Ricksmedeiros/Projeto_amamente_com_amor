import 'package:amamente/page/splash.dart';
import 'package:flutter/material.dart';
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
        initialRoute: '/splash',
        routes: {
          '/splash': (context) => const Splash(),
          '/amamentacao': (_) => Amamentacao(),
          '/ordenha': (_) => OrdenhaSeio(),
          '/cuidadoRecemNascidos': (_) => CuidadosRecem(),
          '/sobreNos': (_) => SobreNos(),
        });
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
        title: const Text('Amamente Com Amor'),
        backgroundColor: Color.fromARGB(255, 238, 149, 161),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/amamentacao');
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(50),
                    height: 200,
                    color: Color.fromARGB(255, 219, 124, 137),
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
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.pinkAccent,
                                  offset: Offset(5.0, 5.0),
                                ),
                              ],
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/ordenha');
                  },
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
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.pinkAccent,
                                  offset: Offset(5.0, 5.0),
                                ),
                              ],
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/cuidadoRecemNascidos');
                  },
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
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.pinkAccent,
                                  offset: Offset(5.0, 5.0),
                                ),
                              ],
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/sobreNos');
                  },
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
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.pinkAccent,
                                  offset: Offset(5.0, 5.0),
                                ),
                              ],
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
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
            color: Color.fromARGB(255, 240, 188, 195),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/logo_uenp.png'),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Projeto UENP',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
