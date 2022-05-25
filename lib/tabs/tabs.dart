import 'package:flutter/material.dart';
import '../home/home.dart';
import '../products/products.dart';
import '../tourist/tourist.dart';
import '../my/my.dart';
// 这个顺序还得按照bottomBar里的顺序来诶

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);
  _TabsState createState()=> _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex=0;
  List _pageList=[
    HomePage(),
    ProductPage(),
    TouristPage(),
    MyPage()
  ];
  List titles = ["首页", "文创产品", "研学旅行", "我的"];
  List normalIcons = [
    "assets/tabs/home-1.png",
    "assets/tabs/product-1.png",
    "assets/tabs/tourist-1.png",
    "assets/tabs/me-1.png",
  ];
  List selectedIcons = [
    "assets/tabs/home-2.png",
    "assets/tabs/product-2.png",
    "assets/tabs/tourist-2.png",
    "assets/tabs/me-2.png",
  ];

  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.width/4;
    // 获取屏幕的宽度
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: this._pageList[this._currentIndex],
          bottomNavigationBar: BottomAppBar(
            color: Color(0xffFEFBF3),
            child: Row(
              children: <Widget>[
                SizedBox(height: 50, width: itemWidth, child: tabbar(0),),
                SizedBox(height: 50, width: itemWidth, child: tabbar(1),),
                SizedBox(height: 50, width: itemWidth, child: tabbar(2),),
                SizedBox(height: 50, width: itemWidth, child: tabbar(3),),
              ],
            ),
          ),
          backgroundColor: Color(0xffF9F3EB),
        )
    );
  }

  Widget tabbar(int index) {
    TextStyle styleBar = TextStyle(fontSize: 12, color: Color(0xff7A5A32), fontWeight: FontWeight.w500);
    String imgUrl = normalIcons[index];
    if(_currentIndex == index) {
      styleBar = TextStyle(fontSize: 12, color: Color(0xff7A5A32), fontWeight: FontWeight.w500);
      imgUrl = selectedIcons[index];
    }
    Widget item = Container(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(imgUrl, width: 24, height: 24,),
            Text(
              titles[index],
              style: styleBar,
            )
          ],
        ),
        onTap: () {
          if(_currentIndex != index) {
            setState(() {
              _currentIndex = index;
            });
          }
        },
      ),
    );
    return item;
  }

}