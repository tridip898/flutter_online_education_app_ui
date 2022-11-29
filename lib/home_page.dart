import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:online_course_app_ui/course_detail_page.dart';
import 'package:online_course_app_ui/widget/categories.dart';
import 'package:online_course_app_ui/widget/courses.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List courseList = [
    ["UI/UX Design", "lib/icons/programming.png", 20],
    ["Robotics", "lib/icons/robot.png", 16],
    ["Accounting", "lib/icons/budget.png", 22],
    ["Data Science", "lib/icons/data-science.png", 18],
    ["AI", "lib/icons/chip.png", 28],
    ["Blockchain", "lib/icons/blockchain.png", 12],
  ];

  List categories=[
    ["Category", Icons.category, Colors.orangeAccent],
    ["Classes", Icons.video_library, Colors.cyan],
    ["Bookstore", Icons.store, Colors.lightBlueAccent],
    ["Live Class", Icons.play_circle, Colors.lightGreen],
    ["Free Course", Icons.assignment, Colors.pinkAccent],
    ["Leaderboard", Icons.emoji_events, Colors.deepPurple],
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            elevation: 0,
            onTap: (index){
              setState((){
                _currentIndex=index;
              });
            },
            iconSize: 30,
            showUnselectedLabels: false,
            selectedItemColor: Colors.deepPurple.shade900,
            unselectedItemColor: Colors.grey.shade500,
            selectedFontSize: 18,
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: "Home",
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_collection_outlined),
                  label: "My Learning",
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border_rounded),
                  label: "Favorite",
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Setting",
                  backgroundColor: Colors.white),
            ]),
        body: Column(
          children: [
            //top container
            Container(
              margin: EdgeInsets.all(3),
              height: MediaQuery.of(context).size.height * 0.24,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.deepPurple.shade600.withOpacity(0.8),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)
                  )
              ),
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello,",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          Text(
                            "Good Morning,",
                            style: TextStyle(
                                fontSize: 25, color: Colors.grey.shade100),
                          ),
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade500.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(50)),
                          padding: EdgeInsets.all(15),
                          child: Badge(
                              badgeContent: Text(
                                "3",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                Icons.notifications,
                                size: 30,
                                color: Colors.white,
                              )))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 30, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    padding: EdgeInsets.all(7),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search your topic",
                          hintStyle: TextStyle(
                              fontSize: 20, color: Colors.grey.shade600),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.grey.shade600,
                          ),
                          suffixIcon: Icon(
                            Icons.mic_none,
                            size: 30,
                            color: Colors.grey.shade600,
                          )),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            //different category
            SizedBox(
              height: 190,
              child: GridView.builder(
                  itemCount: categories.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: false,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 1.3), itemBuilder: (context,index){
                return Categories(
                  catName: categories[index][0],
                  icon: categories[index][1],
                  color: categories[index][2],
                );
              }),
            ),
            //text
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 20, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Explore Categories",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                  )
                ],
              ),
            ),
            //gridview
            Expanded(
              child: GridView.builder(
                  itemCount: courseList.length,
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.18),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
                      },
                      child: CourseType(
                        courseName: courseList[index][0],
                        image: courseList[index][1],
                        numOfCourse: courseList[index][2],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
