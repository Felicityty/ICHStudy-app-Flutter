import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './aboutPla.dart';
import './aboutUs.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);
  _AboutPageState createState()=> _AboutPageState();
}
class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF9F3EB),
          elevation: 0,
          title: Text("关于" ,style: TextStyle(color: Color(0xff382321)),),
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
        body: _about(),
        backgroundColor: Color(0xffF9F3EB)
      ),
    );
  }
}

class _about extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
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
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
                color: Color(0xffFFFBF8),),
              height: 100,
              width: 380,
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      decoration: BoxDecoration(
                        // color: Colors.deepOrangeAccent,
                        border: new Border(bottom: BorderSide(color: Color(0xFFE5E5E5), width: 1)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text("平台介绍",style: TextStyle(fontSize: 16, color: Color(0xff382321)),),
                            height: 50,
                            alignment: Alignment.center,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(260, 0, 0, 0),
                            child: Image.asset(
                              "assets/icons/arrowDownGrey.png",
                              width: 15,
                              height: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPlaPage()));
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text("关于我们",style: TextStyle(fontSize: 16, color: Color(0xff382321)),),
                            height: 49,
                            alignment: Alignment.center,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(260, 0, 0, 0),
                            child: Image.asset(
                              "assets/icons/arrowDownGrey.png",
                              width: 15,
                              height: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => UsPage()));
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}