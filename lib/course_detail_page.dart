import 'package:flutter/material.dart';
import 'package:online_course_app_ui/description.dart';
import 'package:online_course_app_ui/playlist.dart';
import 'package:online_course_app_ui/widget/custom_tabview.dart';
import 'package:online_course_app_ui/widget/custom_video_player.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _selectedTag = 0;
  void changeTab(int index) {
    setState(() {
      _selectedTag = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //app bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300.withOpacity(0.8),
                              blurRadius: 10,
                              spreadRadius: 3,
                              offset: Offset(0, 0))
                        ]),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.keyboard_backspace_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                  Text(
                    "UI/UX Design",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 30,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage("lib/icons/bird.jpg"),fit: BoxFit.fill)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.play_arrow_rounded,size: 50,color: Colors.deepPurple,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.shuffle,color: Colors.white,size: 30,),
                            SizedBox(width: 30,),
                            Icon(Icons.fast_rewind_sharp,color: Colors.white,size: 30,)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.fast_forward,color: Colors.white,size: 30,),
                            SizedBox(width: 30,),
                            Icon(Icons.replay,color: Colors.white,size: 30,)
                          ],
                        )
                      ],
                    ),
                  ),
                  Slider(
                    min: 0,
                      max: 100,
                      thumbColor: Colors.redAccent,
                      activeColor: Colors.redAccent,
                      inactiveColor: Colors.grey.shade300,
                      value: 70,
                      onChanged: (value){}),
                  
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Flutter UI/UX Design",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "Created by",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                          children: [
                        TextSpan(
                            text: "\tArtur Denisovich",
                            style: TextStyle(color: Colors.blue))
                      ])),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star_border,
                                size: 30,
                                color: Colors.grey.shade700,
                              ),
                              SizedBox(
                                width: 05,
                              ),
                              Text(
                                "4.8",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.watch_later_outlined,
                                size: 28,
                                color: Colors.grey.shade700,
                              ),
                              SizedBox(
                                width: 05,
                              ),
                              Text(
                                "72 Hours",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          )
                        ],
                      ),
                      Text(
                        "\$40",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      )
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),
            CustomTabView(
              index: _selectedTag,
              changeTab: changeTab,
            ),
            _selectedTag ==0 ? PlayList() : Description(),

            Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.all(15),
              child: Icon(Icons.bookmark_add,size: 30,color: Colors.white,),
            ),
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    padding: EdgeInsets.all(20),
                    child: Text("Enroll now",textAlign: TextAlign.center, style: TextStyle(fontSize: 20,color: Colors.white),)
                )
            )
            ]
        )
      )
          ],
        ),
      ),
    );
  }
}



