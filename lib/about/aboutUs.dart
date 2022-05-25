import 'package:flutter/material.dart';

class UsPage extends StatefulWidget {
  UsPage({Key key}) : super(key: key);
  _UsPageState createState()=> _UsPageState();
}
class _UsPageState extends State<UsPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("关于我们" ,style: TextStyle(color: Color(0xff382321)),),
            backgroundColor: Color(0xffF9F3EB),
            elevation: 0,
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
          body: _aboutU(),
          backgroundColor: Color(0xffF9F3EB)
      ),
    );
  }
}
class _aboutU extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              height: 80,
              width: 120,
              child: Image.asset("assets/about/logo.png"),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Center(
            child: Text("非遗研学",style: TextStyle(color: Color(0xff382321),fontSize: 24),),
          ),
          SizedBox(
            height: 2,
          ),
          Center(
            child: Text("中国非遗文旅一体化平台",style: TextStyle(color: Color(0xff382321),fontSize: 14),),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text("        与20位非遗传承人展开合作，开发60个非遗数字化产品，产品形式包括非遗短视频、交互媒体、移动应用、微课、VR全景及专题网站。",style: TextStyle(color: Color(0xff382321),fontSize: 14),),
          )
        ],
      ),
    );
  }
}