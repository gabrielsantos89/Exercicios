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
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo Flutter Form"),
      ),
      body: Column(
        children: <Widget>[
          Text("Radio Button",textAlign: TextAlign.left,),
          ListTile(
            title: Text("Radio 1"),
            leading: Radio(
              value: "radio1",
              groupValue: _value,
              onChanged: (value) {
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
              onChanged: (value) {
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
              onChanged: (value) {
                setState(() {
                  _value = value.toString();
                });
              },
            ),
          ),
          CheckboxListTile(
              activeColor: Colors.blue,
              checkColor: Colors.white,
              selected: isChecked1,
              title: Text("Exemplo Checkbox 1"),
              value: isChecked1,
              onChanged: (bool? value) {
                setState(() {
                  isChecked1 = value!;
                });
              }),
          CheckboxListTile(
              activeColor: Colors.blue,
              checkColor: Colors.white,
              title: Text("Exemplo Checkbox 2"),
              value: isChecked2,
              onChanged: (bool? value) {
                setState(() {
                  isChecked2 = value!;
                });
              }),
          CheckboxListTile(
              activeColor: Colors.blue,
              checkColor: Colors.white,
              title: Text("Exemplo Checkbox 3"),
              value: isChecked3,
              onChanged: (bool? value) {
                setState(() {
                  isChecked3 = value!;
                });
              }),
          Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: "E-mail"),
                  keyboardType: TextInputType.emailAddress,
                  maxLength: 40,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "E-mail Invalido";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Telefone"),
                  keyboardType: TextInputType.phone,
                  maxLength: 11,
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 11) {
                      return "Telefone Invalido";
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 16)),
          RaisedButton(
              child: Text("Enviar"),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              })
        ],
      ),
    );
  }
}