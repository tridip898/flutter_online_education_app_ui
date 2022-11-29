import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String catName;
  final icon;
  final color;
  const Categories({Key? key, required this.catName, this.icon, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10) ,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(50)
          ),
          child: Icon(icon,color: Colors.white,size: 30,),
        ),
        SizedBox(height: 5,),
        Text(catName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
      ],
    );
  }
}
