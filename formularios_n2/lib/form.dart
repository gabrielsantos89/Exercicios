import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  String _value = "Android";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Aplicativos"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              ListTile(
                title: Text("Android"),
                leading: Radio(
                  value: "Android",
                  groupValue: _value,
                  onChanged: (value){
                    setState(() {
                      _value = value.toString();
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("IOS"),
                leading: Radio(
                  value: "IOS",
                  groupValue: _value,
                  onChanged: (value){
                    setState(() {
                      _value = value.toString();
                    });
                  },
                ),
              ),
            ],
          ),
          TextField(
            decoration: InputDecoration(labelText: "Titulo"),
            keyboardType: TextInputType.text,
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
