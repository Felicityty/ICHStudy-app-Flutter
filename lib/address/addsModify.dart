import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './address.dart';

class AddsmodifyPage extends StatefulWidget {
  AddsmodifyPage({Key key}) : super(key: key);
  _AddsmodifyPageState createState()=> _AddsmodifyPageState();
}
class _AddsmodifyPageState extends State<AddsmodifyPage> {

  String name = "";
  String phone = "";
  String address = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("编辑我的地址",style: TextStyle(color: Color(0xff382321)),),
            backgroundColor: Color(0xffF9F3EB),
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Color(0xff7A5A32),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddressPage()));
              },
            ),
          ),
          body: _addressContent(),
          backgroundColor: Color(0xffF9F3EB)
      ),
    );
  }

  Widget _addressContent() {
    return Container(
      margin: EdgeInsets.fromLTRB(24, 20, 24, 0),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
                color: Color(0xffFFFBF8)
            ),
            height: 45,
            width: 380,
            child: Row(
              children: <Widget>[
                SizedBox(width: 15,),
                Container(
                  child: Text("收货人",style: TextStyle(color: Color(0xff382321), fontWeight: FontWeight.w500, fontSize: 16),),
                ),
                SizedBox(width: 15,),
                Container(
                  width: 300,
                  // color: Colors.deepOrangeAccent,
                  child: TextField(
                    onChanged: (value){
                      setState(() {
                        name = value;
                      });
                    },
                    style: TextStyle(fontSize: 16, color: Color(0xff73615D)),
                    decoration: InputDecoration(
                        hintText: "请输入姓名",
                        border: InputBorder.none
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 40,
            width: 370,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
                color: Color(0xff987744)
            ),
            child: Center(
              child: Text("保存",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),
            ),
          )
        ],
      ),
    );
  }

}