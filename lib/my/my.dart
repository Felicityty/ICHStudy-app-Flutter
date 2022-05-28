import 'package:flutter/material.dart';
import '../about/aboutIndex.dart';
import '../address/address.dart';

class MyPage extends StatefulWidget {
  MyPage({Key key}) : super(key: key);
  _MyPageState createState()=> _MyPageState();
}
class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("我的" ,style: TextStyle(color: Color(0xff382321)),),
        backgroundColor: Color(0xffF9F3EB),
        // elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
                    color: Color(0xffFFFBF8)
                ),
                height: 50,
                width: 380,
                child: GestureDetector(
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
                          child: Text("关于",style: TextStyle(fontSize: 16, color: Color(0xff382321)),),
                          height: 50,
                          alignment: Alignment.center,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(290, 0, 0, 0),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 50,
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
                              child: Text("我的地址",style: TextStyle(fontSize: 16, color: Color(0xff382321)),),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AddressPage()));
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text("我的订单",style: TextStyle(fontSize: 16, color: Color(0xff382321)),),
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
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => UsPage()));
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
        backgroundColor: Color(0xffF9F3EB)
    );
  }
}