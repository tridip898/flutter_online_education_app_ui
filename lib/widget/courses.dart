import 'package:flutter/material.dart';

class CourseType extends StatelessWidget {
  final String courseName;
  final String image;
  final int numOfCourse;
  const CourseType({Key? key, required this.courseName, required this.image, required this.numOfCourse}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300.withOpacity(0.6),
                  blurRadius: 30,
                  spreadRadius: 20,
                  offset: Offset(10, 10)
              )
            ]
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.topRight ,
                child: Image.asset(image,height: 110,)),
            SizedBox(height: 15,),
            Text(courseName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            SizedBox(height: 05,),
            Text(numOfCourse.toString()+"\t courses",style: TextStyle(fontSize: 18,color: Colors.grey.shade700),),
          ],
        ),
      ),
    );
  }
}
