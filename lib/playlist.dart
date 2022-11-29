import 'package:flutter/material.dart';
import 'package:online_course_app_ui/widget/playlist_card.dart';

class PlayList extends StatelessWidget {
  const PlayList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.deepPurple,
                child: Icon(Icons.play_arrow,size: 40,color: Colors.white,),
              ),
              title: Text("Introduction",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Text("2 min 18 sec",style: TextStyle(fontSize: 17,color: Colors.grey.shade600),),
              trailing: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  padding: EdgeInsets.all(2),
                  child: Icon(Icons.done,color: Colors.white,)),
            ),
            PlaylistCard(
                title: "What is UI/UX design?",
                min: 10,
                sec: 34,
            ),
            PlaylistCard(
              title: "Widgets of flutter",
              min: 15,
              sec: 20,
            )
          ],
        ),
      )
    );
  }
}
