import 'package:flutter/material.dart';

// importing material design libraryy
void main() {
  runApp(MaterialApp(

    // runApp method
    home: HomePage(),
  )); //MaterialApp
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // value set to false
  bool _value = false;

  // App widget tree
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GeeksforGeeks'),
          backgroundColor: Colors.greenAccent[400],
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          ), //IcoButton
        ), //AppBar
        body: SizedBox(
          width: 400,
          height: 400,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: BorderRadius.circular(20),
                ), //BoxDecoration

                /** CheckboxListTile Widget **/
                child: CheckboxListTile(
                  title: const Text('GeeksforGeeks'),
                  subtitle: const Text('A computer science portal for geeks.'),
                  secondary: const Icon(Icons.code),
                  autofocus: false,
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  selected: _value,
                  value: _value,
                  onChanged: (bool? value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                ), //CheckboxListTile
              ), //Container
            ), //Padding
          ), //Center
        ), //SizedBox
      ), //Scaffold
    ); //MaterialApp
  }
}