import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> data = [];
    data.add(Text("Click Here to Increase number"));
    data.add(Text(number.toString(), style: TextStyle(fontSize: 60)));

    return Scaffold(
        appBar: AppBar(
          title: Text('Count Program'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: data,
          ),
        ),
        floatingActionButton: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 31),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: FloatingActionButton(
                  onPressed: addNumber,
                  child: Icon(Icons.add),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: decreseNumber,
                child: Icon(Icons.remove),
              ),
            ),
          ],
        ));
  }

  void addNumber() {
    setState(() {
      number++;
    });
  }

  void decreseNumber() {
    setState(() {
      number--;
    });
  }
}
