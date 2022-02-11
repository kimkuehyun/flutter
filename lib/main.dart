import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }

  Widget home() {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("SSD"),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                print("누름");
              },
              icon: Icon(Icons.mode_comment)),
          IconButton(onPressed: () => print("asdf"), icon: Icon(Icons.money_off))
        ],
      ),
      body: body()
    );
  }

  Widget body() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: cols(),
    );
  }

  Widget cols() {
    return Column(
      children: <Widget>[
        rows(), rows(), rows()
      ],
    );
  }

  Widget rows() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text("1111"),
        Text("2222"),
        Text("3333"),
        Text("4444"),
        Text("5555"),
        Text("6666"),
        Text("7777"),
        Text("8888"),
        Text("9999")
      ],
    );
  }
}