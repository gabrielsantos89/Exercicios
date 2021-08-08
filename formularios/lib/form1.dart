import 'package:flutter/material.dart';

void main() => runApp(const FormularioUm());

class FormularioUm extends StatelessWidget {
  const FormularioUm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = "Formulário com Validação";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          backgroundColor: Colors.blueGrey,
        ),

        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState(){
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value) {
              if(value == null || value.isEmpty){
                return "Por favor entre com um texto";
              }
              return null;
            },
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 16.0),
          child: ElevatedButton(
            onPressed: (){
              if(_formKey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Processando Dados")),
                );
              }
            },
            child: Text("Enviar"),
          ),),
        ],
      ),
    );
  }
}
