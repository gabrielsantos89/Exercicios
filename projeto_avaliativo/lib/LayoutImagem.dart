import 'package:flutter/material.dart';

class LayoutImagem extends StatefulWidget {
  const LayoutImagem({Key? key}) : super(key: key);

  @override
  _LayoutImagemState createState() => _LayoutImagemState();
}

class _LayoutImagemState extends State<LayoutImagem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutImagem"),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(5),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
          Padding(
          padding: EdgeInsets.only(bottom: 2),
          child: Image.asset("imagens/ravenloft.jpg"),
          ),
          Padding(padding: EdgeInsets.only(bottom: 2),
            child: RaisedButton(
              child: Text("Back"),
              onPressed: (){},
            ),
      )
        ],
      ),
    ),
      )
    );
  }
}
