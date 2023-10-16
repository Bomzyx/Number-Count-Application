import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
      title: "Bom App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Matcha List"),
          backgroundColor: Colors.green,
        ),
        body: Text("Test"),
      ));
  runApp(app);
}
