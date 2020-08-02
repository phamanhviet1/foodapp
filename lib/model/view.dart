import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/model/catelogy.dart';
import 'package:flutter_1/model/data.dart';
import 'package:flutter_1/model/item.dart';

class CaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(padding: EdgeInsets.all(10),
      children: data.map((eachCatelogy) =>CateItem(catelogy: eachCatelogy)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 3/ 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
