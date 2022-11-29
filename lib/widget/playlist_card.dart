import 'package:flutter/material.dart';

class PlaylistCard extends StatelessWidget {
  final String title;
  final int min;
  final int sec;
  const PlaylistCard({Key? key, required this.title, required this.min, required this.sec,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.grey.shade300,
        child: Icon(Icons.play_arrow_rounded,size: 50,color: Colors.deepPurple,),
      ),
      title: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      subtitle: Text(min.toString()+"\tmin\t"+ sec.toString()+"\tsec",style: TextStyle(fontSize: 17,color: Colors.grey.shade600),),
      trailing: Container(
          decoration: BoxDecoration(
              color: Colors.yellow.shade300,
              borderRadius: BorderRadius.circular(50)
          ),
          padding: EdgeInsets.all(5),
          child: Icon(Icons.lock,color: Colors.orange.shade600,size: 20,)),
    );
  }
}
