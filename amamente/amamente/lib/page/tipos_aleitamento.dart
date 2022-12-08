import 'package:amamente/secundaryPage/complementado.dart';
import 'package:amamente/secundaryPage/misto_parcial.dart';
import 'package:amamente/secundaryPage/predominante.dart';
import 'package:flutter/material.dart';
import '../secundaryPage/exclusivo.dart';

class TiposDeAleitamento extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Tipos de aleitamento'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 238, 149, 161),
        ),
        body: botao(context),
      );
}

Widget botao(BuildContext context) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 238, 149, 161)),
                fixedSize: MaterialStateProperty.all<Size>(Size(250, 60)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () => selectedItem(context, 0),
              child: Text(
                "Exclusivo",
                textDirection: TextDirection.ltr,
              )),
          SizedBox(height: 30),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 238, 149, 161)),
                fixedSize: MaterialStateProperty.all<Size>(Size(250, 60)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () => selectedItem(context, 1),
              child: Text(
                "Predominante",
                textDirection: TextDirection.ltr,
              )),
          SizedBox(height: 30),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 238, 149, 161)),
                fixedSize: MaterialStateProperty.all<Size>(Size(250, 60)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () => selectedItem(context, 2),
              child: Text(
                "Complementado",
                textDirection: TextDirection.ltr,
              )),
          SizedBox(height: 30),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 238, 149, 161)),
                fixedSize: MaterialStateProperty.all<Size>(Size(250, 60)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () => selectedItem(context, 3),
              child: Text(
                "Misto ou parcial",
              )),
        ],
      ),
    ),
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();

  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Exclusivo(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Predominante(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Complementado(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MistoOuParcial(),
      ));
      break;
  }
}
