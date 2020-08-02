import 'package:flutter/material.dart';
import 'package:flutter_1/model/item.dart';
import 'package:flutter_1/model/catelogy.dart';
class Foodpage extends StatelessWidget{
  Catelogy catelogy;
  Foodpage({this.catelogy});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Foods : ${catelogy.content}'),
      ),
      body: Container(
        child: Container(
            child: Column(children: <Widget> [Text(
          'Food list: ${catelogy.id}',
          style: TextStyle(fontSize: 25),)],

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
        ),

        ),
          decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: [this.catelogy.color.withOpacity(0.8),
          this.catelogy.color.withOpacity(1)],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft
          ),
            ),







        ),

    );
  }
}