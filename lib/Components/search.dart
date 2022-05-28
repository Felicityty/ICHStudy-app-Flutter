import 'package:flutter/material.dart';
import '../search/search.dart';

class searchWidget extends StatelessWidget {
  int i;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.fromLTRB(24, 10, 24, 15),
        height: 35,
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Row(
            children: <Widget>[Icon(Icons.search), SizedBox(width: 5,), Text("搜素", style: TextStyle(color: Color(0xff73615D)))],
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(50), right: Radius.circular(50)),
            color: Colors.white
        ),
      ),
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SearchPage()));
      },
    );
  }
}

