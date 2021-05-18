import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String texto;
  TextEditingController _textController = TextEditingController();

  SecondPage({Key key, this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla 2 Camila Villegas"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(24.0),
              child: TextField(
                controller: _textController,
                maxLength: 50,
                decoration: InputDecoration(
                  labelText: "Ingrese palabra",
                  hintText: "Palabra",
                ),
              ),
            ),
            MaterialButton(
              child: Text("Back"),
              onPressed: () {
                Navigator.of(context).pop(_textController.text);
              },
            ),
          ], //fin de widget []
        ), //fin de columna hijo
      ), //fin de body center
    ); //fin de Scafoold
  } // fin de widget
} //fin clase segunda pagina
