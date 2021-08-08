import 'package:flutter/material.dart';

enum Plataforma {android,ios,web}
Plataforma ? _platform = Plataforma.android;

class Formulario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro de Aplicativos"),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Titulo"),
              keyboardType: TextInputType.text,
            ),
            Padding(padding: EdgeInsets.only(top: 16)),
            TextField(
              decoration: InputDecoration(labelText: "Plataforma"),
              keyboardType: TextInputType.number,
            ),
            Padding(padding: EdgeInsets.only(top: 16)),
            TextField(
              decoration: InputDecoration(labelText: "Valor"),
              keyboardType: TextInputType.number,
            ),
            Padding(padding: EdgeInsets.only(top: 16)),
            RaisedButton(
                child: Text("Cadastrar"),
                onPressed: (){
                })
          ],
        ),
      );
  }
}