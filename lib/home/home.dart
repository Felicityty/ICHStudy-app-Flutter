import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../VR/vrDetail.dart';
import '../VR/VRIndex.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> bannerList = [
    {"url": "assets/banner/banner1.png"},
    {"url": "assets/banner/banner2.png"},
    {"url": "assets/banner/banner3.png"},
    {"url": "assets/banner/banner4.png"},
    {"url": "assets/banner/banner5.png"},
  ];

  List<Map> couesesList = [
    {"name": "扯白糖", "picUrl": "assets/coursesPic/cbt.png"},
    {"name": "皤滩文化古镇", "picUrl": "assets/coursesPic/ptgz.png"},
    {"name": "皮影之光", "picUrl": "assets/coursesPic/pyzg.png"},
    {"name": "朱丹溪中医药文化", "picUrl": "assets/coursesPic/zdx.png"},
  ];

  List<Map> vrsList = [
    {
      "id":0,
      "name": "舟山博物馆",
      "picUrl": "assets/vrPic/zs.png",
    },
    {
      "id":1,
      "name": "十里红妆博物馆",
      "picUrl": "assets/vrPic/slhz.png",
    },
    {
      "id":2,
      "name": "定海古城",
      "picUrl": "assets/vrPic/dhgc.png",
    },
    {
      "id":3,
      "name": "龙珠",
      "picUrl": "assets/vrPic/lz.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
          children: <Widget>[
            home_swiper(),
            Container(
              transform: Matrix4.translationValues(0.0, -35.0, 0.0), // 有点遮住上一层的效果
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Color(0xffF9F3EB),
              ),
              child: Column(
                children: <Widget>[
                  // 第一行标题
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                            width: 80,
                            height: 68,
                            // color: Colors.red,
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "课程",
                                  style: TextStyle(fontSize: 18, color: Color(0xff372221)),
                                ),
                              ],
                            )),
                        Spacer(
                          flex: 3,
                        ),
                        GestureDetector(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                            width: 80,
                            height: 68,
                            // color: Colors.yellow,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text("全部", style: TextStyle(color: Color(0xff73615D)),),
                                Container(
                                  width: 3,
                                ),
                                Image.asset(
                                  "assets/icons/arrowDownGrey.png",
                                  width: 10,
                                  height: 15,
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            // _navigateToVRPage(context);
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
                  color: Color(0xffF9F3EB),
                  child: Container(
                      margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
                      transform: Matrix4.translationValues(0.0, -35.0, 0.0),
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: couesesList.length,
                          itemBuilder: _courses)),
                )
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -35.0, 0.0), // 有点遮住上一层的效果
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(30),
                //   topRight: Radius.circular(30),
                // ),
                color: Color(0xffF9F3EB),
              ),
              // height: 520,
              child: Column(
                children: <Widget>[
                  // 第一行标题
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                            width: 80,
                            height: 68,
                            // color: Colors.red,
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "VR",
                                  style: TextStyle(fontSize: 18, color: Color(0xff372221)),
                                ),
                              ],
                            )),
                        Spacer(
                          flex: 3,
                        ),
                        GestureDetector(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                            width: 80,
                            height: 68,
                            // color: Colors.yellow,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text("全部", style: TextStyle(color: Color(0xff73615D)),),
                                Container(
                                  width: 3,
                                ),
                                Image.asset(
                                  "assets/icons/arrowDownGrey.png",
                                  width: 10,
                                  height: 15,
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            _navigateToVRPage(context);
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
                  color: Color(0xffF9F3EB),
                  child: Container(
                      color: Color(0xffF9F3EB),
                      margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
                      transform: Matrix4.translationValues(0.0, -35.0, 0.0),
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: vrsList.length,
                          itemBuilder: _vrs)),
                )
            )
          ]),
    );
  }

  Widget _courses(BuildContext context, int index) {
    return GestureDetector(
        child: Container(
            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  // 圆角
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    couesesList[index]["picUrl"],
                    width: 120,
                    height: 135,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(couesesList[index]["name"]),
                )
              ],
            )),
        onTap: () {

        });
  }

  Widget _vrs(BuildContext context, int index) {
    return GestureDetector(
        child: Container(
            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  // 圆角
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    vrsList[index]["picUrl"],
                    width: 120,
                    height: 135,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(vrsList[index]["name"]),
                )
              ],
            )),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => VRPage(vrsList[index]["id"].toString())));
        print(vrsList[index]["id"].toString());
      },
    );
  }

  Widget home_swiper() {
    return Container(
      height: 310.0,
      child: Swiper(
        // 横向
        scrollDirection: Axis.horizontal,
        // 布局构建
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(bannerList[index]["url"], fit: BoxFit.fill);
        },
        //条目个数
        itemCount: 5,
        // 自动翻页
        autoplay: true,
        // 分页指示
        pagination: _buildPlugin(),
        //点击事件
        onTap: (index) {
          print(" 点击 " + index.toString());
        },
        // 相邻子条目视窗比例
        viewportFraction: 1,
        // 用户进行操作时停止自动翻页
        autoplayDisableOnInteraction: true,
        // 无限轮播
        loop: true,
        //当前条目的缩放比例
        scale: 1,
      ),
    );
  }

  //默认圆点指示器
  _buildPlugin() {
    return _buildSwiperPagination();
  }

  //自定义圆点分页指示器
  _buildSwiperPagination() {
    // 分页指示器
    return SwiperPagination(
      //指示器显示的位置 Alignment.bottomCenter 底部中间
      alignment: Alignment.bottomCenter,
      // 距离调整
      margin: const EdgeInsets.only(bottom: 40),
      // 指示器构建
      builder: DotSwiperPaginationBuilder(
          // 点之间的间隔
          space: 4,
          // 没选中时的大小
          size: 8,
          // 选中时的大小
          activeSize: 8,
          // 没选中时的颜色
          color: Colors.black54,
          //选中时的颜色
          activeColor: Colors.black87),
    );
  }

  _navigateToVRPage(BuildContext context) async{
    final result = await Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> VRIndexPage()));
    // Scaffold.of(context).showSnackBar(SnackBar(content: Text("$result")));     // 压栈
  }
}
