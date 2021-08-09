import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  String _value = "radio1";
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Form"),
      ),
      body: Column(
        children: <Widget>[
          Text("Radio Button"),
          ListTile(
            title: Text("Radio 1"),
            leading: Radio(
              value: "radio1",
              groupValue: _value,
              onChanged: (value){
                setState(() {
                  _value = value.toString();
                });
              },
            ),
          ),
          ListTile(
            title: Text("Radio 2"),
            leading: Radio(
              value: "radio2",
              groupValue: _value,
              onChanged: (value){
                setState(() {
                  _value = value.toString();
                });
              },
            ),
          ),
          ListTile(
            title: Text("Radio 3"),
            leading: Radio(
              value: "radio3",
              groupValue: _value,
              onChanged: (value){
                setState(() {
                  _value = value.toString();
                });
              },
            ),
          ),
          CheckboxListTile(
            activeColor: Colors.amber,
            checkColor: Colors.black,
            selected: isChecked1,
            title: Text("Exemplo Checkbox 1"),
              value: isChecked1,
              onChanged: (bool? value){
                setState(() {
                  isChecked1 = value!;
                });
          }),
          CheckboxListTile(
              title: Text("Exemplo Checkbox 2"),
              value: isChecked2, onChanged: (bool? value){
            setState(() {
              isChecked2 = value!;
            });
          }),
          CheckboxListTile(
              title: Text("Exemplo Checkbox 3"),
              value: isChecked3, onChanged: (bool? value){
            setState(() {
              isChecked3 = value!;
            });
          }),
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
