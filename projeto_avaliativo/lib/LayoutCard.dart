import 'package:flutter/material.dart';

class LayoutCard extends StatefulWidget {
  const LayoutCard({Key? key}) : super(key: key);

  @override
  _LayoutCardState createState() => _LayoutCardState();
}

class _LayoutCardState extends State<LayoutCard> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutCard"),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(bottom: 30),
                      child: Image.asset("imagens/COS.jpg"),)
                    ],
                  ),
                );
              }
          ))
        ],
      ),

    );
  }
}
