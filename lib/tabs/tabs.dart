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
enum pop {datetime, sharing}
class _TabsState extends State<Tabs> {
  int _currentIndex=0;
  List _pageList=[
    HomePage(),
    ProductPage(),
    TouristPage(),
    MyPage()
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,  // 超过4个需要手动设置为fixed，否则默认shifting
        currentIndex: this._currentIndex,  // 配置对应的索引值选中
        onTap: (int index){
          setState(() {
            this._currentIndex=index;
          });
        },
        fixedColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.collections),
              title: Text('文创产品')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              title: Text('研学旅行')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.email),
              title: Text('我的')
          )
        ],
      ),
    );
  }
}