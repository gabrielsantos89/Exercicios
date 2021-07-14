import 'package:flutter/material.dart';

class LayoutCard extends StatefulWidget {
  const LayoutCard({Key? key}) : super(key: key);

  @override
  _LayoutCardState createState() => _LayoutCardState();
}

class _LayoutCardState extends State<LayoutCard> {
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
                if(index>2){
                  return null;
                }
                return Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(bottom: 30),
                      child: Image.asset("imagens/COS.jpg"),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 30),
                      child: RaisedButton(
                        padding: EdgeInsets.all(15),
                        child: Text("Delete",style: TextStyle(fontSize: 10),),
                        onPressed: (){},
                      ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 30),
                        child: Image.asset("imagens/curse-of-strahd.jpg"),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 30),
                        child: RaisedButton(
                          padding: EdgeInsets.all(15),
                          child: Text("Delete",style: TextStyle(fontSize: 10),),
                          onPressed: (){},
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 30),
                        child: Image.asset("imagens/strahd-castle-gates.jpg"),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 30),
                        child: RaisedButton(
                          padding: EdgeInsets.all(15),
                          child: Text("Delete",style: TextStyle(fontSize: 10),),
                          onPressed: (){},
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
       /*   SliverList(delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(bottom: 30),
                      child: Image.asset("imagens/curse-of-strahd.jpg"),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 30),
                      child: RaisedButton(
                        padding: EdgeInsets.all(15),
                        child: Text("Delete",style: TextStyle(fontSize: 10),),
                        onPressed: (){},
                      ),)
                  ],
                ),
              );
            },
            childCount: bottom.length,
          ),
          )*/
        ],
      ),

    );
  }
}
