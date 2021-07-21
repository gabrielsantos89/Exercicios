import 'package:flutter/material.dart';

void main() => runApp(ComDraw());

class ComDraw extends StatelessWidget {
  final appTitle = 'Widget Drawer';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MeuDrawer(title: appTitle),
    );
  }
}
class MeuDrawer extends StatelessWidget {
  final String title;
  const MeuDrawer({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text("Aqui vai o Contúdo do App"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text("Drawer - Componente Layout"),
            ),
            ListTile(
              title: Text("Menu 1"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Menu 2"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Menu 3"),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

