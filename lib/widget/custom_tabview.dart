import 'package:flutter/material.dart';

class CustomTabView extends StatefulWidget {
  final Function(int) changeTab;
  final int index;
  const CustomTabView({Key? key, required this.changeTab, required this.index}) : super(key: key);

  @override
  State<CustomTabView> createState() => _CustomTabViewState();
}

class _CustomTabViewState extends State<CustomTabView> {
  final List<String> _tags=["Playlist (22)","Description"];

  Widget _buildTags(int index){
    return GestureDetector(
      onTap: (){
        widget.changeTab(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width*0.08,
            vertical: 15
        ),
        decoration: BoxDecoration(
            color: widget.index==index ? Colors.deepPurple: null,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Text(_tags[index],style: TextStyle(
            color: widget.index != index ? Colors.black : Colors.white,
            fontSize: 18
        ),),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey.shade200
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _tags.asMap().entries.map((MapEntry map) => _buildTags(map.key)).toList(),
        ),
      ),
    );
  }
}