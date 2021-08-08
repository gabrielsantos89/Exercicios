import 'package:flutter/material.dart';
import 'form.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    )
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/flutter.jpg"),
                  fit: BoxFit.fill
                ),
              ),
            ),
            Text("Exemplo de formulario utilizando flutter",
              style: TextStyle(color: Colors.yellow, fontSize: 20.0),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Row(

            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Formulario())
                );
              },
              child: Text('Flutter Form'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.deepPurple,
    );
  }
}