import 'package:flutter/material.dart';

class CamposCheckBox extends StatefulWidget {
  const CamposCheckBox({Key? key}) : super(key: key);

  @override
  _CamposCheckBoxState createState() => _CamposCheckBoxState();
}

class _CamposCheckBoxState extends State<CamposCheckBox> {
  bool selecionaValor = false;
  bool valorCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trabalhando com Checkbox"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CheckboxListTile(title:Text("Selecione a opção desejada")
                ,value: selecionaValor,
                onChanged: (valorCheck){
              setState(() {
                if(selecionaValor){
                  selecionaValor=false;
                }
                else{
                  selecionaValor=true;
                }
              });
              print("valor Selecionado: " + selecionaValor.toString());
                }
            )
          ],
        ),
      ),
    );
  }
}
