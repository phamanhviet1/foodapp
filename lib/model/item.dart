import 'package:flutter/material.dart';
import 'package:flutter_1/model/catelogy.dart';
import 'package:flutter_1/model/foodpage.dart';
class CateItem extends StatelessWidget{
  Catelogy catelogy;
  CateItem({this.catelogy});
  @override
  Widget build(BuildContext context){
    Color _color=this.catelogy.color;
    return InkWell(
      onTap: (){
        print('tapped to: ${this.catelogy.content}');
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Foodpage(catelogy: this.catelogy)
          )

        );
      },
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(this.catelogy.content, style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white)),
            ],

          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  _color.withOpacity(0.8),
                  _color


                ],
                begin: Alignment.topRight,
                  end: Alignment.bottomLeft

              ),
              color:_color,
            borderRadius: BorderRadius.circular(20)
        )
        )
    );


  }

}


