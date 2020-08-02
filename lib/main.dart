import 'package:flutter/material.dart';
import 'package:flutter_1/model/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App with Navigation',
      theme: ThemeData(


        primarySwatch: Colors.blue,
        fontFamily: 'Lobster',
        textTheme:  ThemeData.light().textTheme

      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Food Application'),
        ),
        body: CaView()
        ),
      );

  }
}

