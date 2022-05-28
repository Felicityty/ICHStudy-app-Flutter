import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);
  _SearchPageState createState()=> _SearchPageState();
}
class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索" ,style: TextStyle(color: Color(0xff382321)),),
        backgroundColor: Color(0xffF9F3EB),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff7A5A32),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          _searchContent(),
          _history()
        ],
      ),
      backgroundColor: Color(0xffF9F3EB),
    );
  }

  Widget _searchContent() {
    return Container(
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
    );
  }
  Widget _history() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(24, 10, 24, 0),
          child: Wrap(
            spacing: 310,
            children: <Widget>[
              Text("历史" ,style: TextStyle(color: Color(0xff382321), fontSize: 16),),
              Container(
                child: Image.asset("assets/icons/bin.png",),
                height: 25,
                width: 25,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(24, 15, 0, 0),
          decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
          height: 40,
          width: 90,
          child: Center(
            child: Text("XXX",style: TextStyle(color: Color(0xff382321))),
          ),
        )
      ],
    );
  }
}