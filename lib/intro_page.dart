import 'package:flutter/material.dart';
import 'package:online_course_app_ui/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/1.6,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Colors.deepPurple.shade900.withOpacity(0.8),
                          Colors.deepPurple.shade900.withOpacity(1)
                        ])
                    ),
                    child: Center(
                      child: Image.asset("lib/icons/reading.png",height: 300,),
                    ),
                  ),

                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height/2.6,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade900.withOpacity(1)
                  ),
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height/2.7,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                  child: Column(
                    children: [
                      Text("Discover your next skill Learn anything you want",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.indigo.shade900),textAlign: TextAlign.center,),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text("Discover the things you want to learn and grow with them",style: TextStyle(fontSize: 17,color: Colors.grey.shade600),textAlign: TextAlign.center,),
                      ),
                      SizedBox(height: 20,),
                      MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        child: Text("Get Started",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
                        color: Colors.indigo,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
