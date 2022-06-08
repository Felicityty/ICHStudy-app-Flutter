import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './login.dart';

class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _index()
      ),
    );
  }
}

// 一定要单拎出来的原因就是MaterialApp下无法直接使用路由跳转
class _index extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/indexPic/index.png'),
                fit: BoxFit.fitWidth)),
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                        margin: EdgeInsets.fromLTRB(24, 660, 24, 60),
                        height: 55,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
                          color: Color(0xff987744),),
                        child: Center(
                          child:Text("登录",style: TextStyle(fontSize: 18,color: Colors.white),),
                        )
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                  GestureDetector(
                    child: Container(
                        margin: EdgeInsets.fromLTRB(0, 660, 24, 60),
                        height: 55,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
                          color: Color(0xff987744),),
                        child: Center(
                          child:Text("注册",style: TextStyle(fontSize: 18,color: Colors.white),),
                        )
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                ],
              ),
            ),
            Container(
              child: Text("开发人员：数媒203  1200651144  冯婷婷" ,style: TextStyle(color: Color(0xff382321)),),
            )
          ],
        )
      // child: SizedBox(
      //   child: Row(
      //     textDirection: TextDirection.ltr,
      //     children: <Widget>[
      //       Expanded(
      //           child: GestureDetector(
      //             child: Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.horizontal(
      //                     left: Radius.circular(10),
      //                     right: Radius.circular(10)),
      //                 color: Color(0xff987744),
      //               ),
      //               margin: EdgeInsets.fromLTRB(40, 550, 20, 0),
      //               width: 100,
      //               height: 50,
      //               child: Center(
      //                 child: Text("登录", textDirection: TextDirection.ltr,
      //                   style: TextStyle(fontSize: 18,color: Colors.white, decoration: TextDecoration.none),),
      //               ),
      //             ),
      //             onTap: () {
      //               Navigator.push(
      //                   context,
      //                   MaterialPageRoute(builder: (context) => LoginPage()));
      //             },
      //           )
      //       ),
      //       Expanded(
      //         child: Container(
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.horizontal(
      //                 left: Radius.circular(10), right: Radius.circular(10)),
      //             color: Color(0xff987744),
      //           ),
      //           margin: EdgeInsets.fromLTRB(20, 550, 40, 0),
      //           width: 100,
      //           height: 50,
      //           child: Center(
      //             child: Text("注册", textDirection: TextDirection.ltr,
      //               style: TextStyle(fontSize: 18,color: Colors.white, decoration: TextDecoration.none),),
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      // )
    );
  }
}
