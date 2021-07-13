import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controllerUser = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Login"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Image.asset("imagens/amazon.jpeg"),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10),
                child: Text("Digite seu e-mail e senha para acessar o serviço:",
                  style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                ),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: "digite seu email"),
                style: TextStyle(fontSize: 18),
                controller: controllerUser,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(labelText: "Digite sua Senha"),
                style: TextStyle(fontSize: 18),
                controller: controllerSenha,
                obscureText: true,
              ),
              Padding(padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                color: Colors.amber,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                child: Text("Logar",style: TextStyle(fontSize: 18),),
                onPressed: (){},
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
