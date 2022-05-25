import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VRPage extends StatefulWidget {
  String vrid;
  VRPage(this.vrid);
  @override
  _VRPageState createState()=> _VRPageState();
}

class _VRPageState extends State<VRPage> {

  List<Map> vrImg = [
    {"id":0, "picUrl": "assets/vrPic/zs.png",},
    {"id":1, "picUrl": "assets/vrPic/slhz.png",},
    {"id":2, "picUrl": "assets/vrPic/dhgc.png",},
    {"id":3, "picUrl": "assets/vrPic/lz.png",},
    {"id":4, "picUrl": "assets/vrPic/js.png",},
    {"id":5, "picUrl": "assets/vrPic/sc.png",},
  ];
  List<Map> vrTitle = [
    {"id":0, "name": "舟山博物馆",},
    {"id":1, "name": "十里红妆博物馆",},
    {"id":2, "name": "定海古城",},
    {"id":3, "name": "龙珠",},
    {"id":4, "name": "金沙",},
    {"id":5, "name": "沙村",},
  ];

  List<Map> vrContentList = [
    {
      "id":0,
      "name": "舟山博物馆",
      "picUrl": "assets/vrPic/zs.png",
      "360Pic":"assets/vr360Pic/zs360.png",
      "info": "舟山博物馆位于浙江省舟山市，是一座集收藏、保护、研究、展示和教育于一体的综合性博物馆。该博物馆于1986年10月开馆。20世纪90年代初为落实宗教政策把祖印寺归还佛协，舟山博物馆闭馆。1995年，舟山博物馆重新筹建，1998年馆舍落成，2000年1月对外开放。2014年6月，舟山博物馆旧馆闭馆。2014年12月27日，舟山博物馆新馆试开馆运行，馆舍位于舟山市海天大道内侧舟山海洋文化艺术中心。",
      "vrUrl": "https://vr.ichstudy.com/bwg/"
    },
    {
      "id":1,
      "name": "十里红妆博物馆",
      "picUrl": "assets/vrPic/slhz.png",
      "360Pic":"assets/vr360Pic/slhz360.png",
      "info": "十里红妆指的是江南特有的嫁女场面，从女方到男方的嫁妆队伍，浩浩荡荡延绵数里，民间叫“十里红妆”。红妆是用贵如黄金的朱砂漆底，用黄金、水银和各种天然石等装饰，集雕刻、堆塑、绘画、书法等一体的各类生活用品。宁海“十里红妆”博物馆是由政府提供馆舍，民间收藏家何晓道先生提供展品的国助民办博物馆。",
      "vrUrl": "https://vr.ichstudy.com/shili/"
    },
    {
      "id":2,
      "name": "定海古城",
      "picUrl": "assets/vrPic/dhgc.png",
      "360Pic":"assets/vr360Pic/dhgc360.png",
      "info": "定海古城是一座历史悠久、古迹众多的的千年古城，也是中国唯一的海岛文化名城。古城内曾保存有明清时期的中大街、西大街、东大街、柴水弄、留方路等历史街区，散布着许多年代久远的古迹，留下了历朝才子名人的足迹。历史上，这里历来还是一个军事要塞，除著名的鸦片战争外，还有抗倭、抗清一批历史遗存。",
      "vrUrl": "https://vr.ichstudy.com/dinghai/"
    },
    {
      "id":3,
      "name": "龙珠",
      "picUrl": "assets/vrPic/lz.png",
      "360Pic":"assets/vr360Pic/lz360.png",
      "info": "位于天峨新城区内，因园中筑有绚丽壮观的“龙珠”（龙珠塔高21.35米，直径13.6米）而得名。公园依山而建、傍水而构，山秀林茂，树生石中，竹影婆娑，池水明澈，美不胜收；建有登山步道、休闲广场、儿童游乐园等，是休闲娱乐健身之佳处。",
      "vrUrl": "https://vr.ichstudy.com/longzhutan/"
    },
    {
      "id":4,
      "name": "金沙",
      "picUrl": "assets/vrPic/js.png",
      "360Pic":"assets/vr360Pic/js360.png",
      "info": "位于浙江省宁波市，不仅融合了当地特色，还体现了当地人的文化底蕴，在旺季的时候就有很多人到此处浏览其风貌，主要的沙滩景点也可以让游客感受不一样的游玩体验，不论是当地人还是外地游客，所有人对这个地方都有着独特的情感，大家可以带着自己的亲朋好友来此打卡，对于家庭来说，这里可以成为孩子的乐园。这里与山为背景，与白浪相拥，有着独特的江南地域风情。",
      "vrUrl":"https://vr.ichstudy.com/jingsha/"
    },
    {
      "id":5,
      "name": "沙村",
      "picUrl": "assets/vrPic/sc.png",
      "360Pic":"assets/vr360Pic/sc360.png",
      "info": "沙村位于浙江省宁波市鄞州区塘溪镇梅溪水库的东侧，这是当地著名的村庄。据《沙氏家谱》记载，沙氏家族在南宋时由蜀迁移到宁波，已有800多年历史，沙村因村民多姓沙，故以沙村名之。沙村不仅以“沙氏五杰”闻名，而且是当初该县第一个中国共产党党支部的诞生地。",
      "vrUrl": "https://vr.ichstudy.com/shacun/"
    },
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _VRContent(),
        backgroundColor: Color(0xffF9F3EB),
          floatingActionButton: SizedBox(
            height: 40,
            width: 40,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back_ios, color: Color(0xff7A5A32),),
              backgroundColor: Color(0xffffffff),
            ),
          ),
        floatingActionButtonLocation:CustomFloatingActionButtonLocation(  // 自定义悬浮按钮
            FloatingActionButtonLocation.startTop, 0, 70),
      ),
    );
  }

  Widget _VRContent(){
    int a = int.parse(widget.vrid);
    for(int i=0; i<vrImg.length; i++ ){  // 一样的就不输出
      if(a==i)  vrImg.removeAt(a);
      if(a==i)  vrTitle.removeAt(a);
    }
    return ListView(
      padding: EdgeInsets.all(0),
      children: <Widget>[
        Container(
          child: Image.asset(vrContentList[a]["picUrl"]),
        ),

        Container(
          padding: EdgeInsets.all(0),
          height: 680,
          transform: Matrix4.translationValues(0.0, -35.0, 0.0), // 有点遮住上一层的效果
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Color(0xffF9F3EB),
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(24, 24, 0, 0),
                child: Text(
                  vrContentList[a]["name"],
                  style: TextStyle(fontSize: 18, color: Color(0xff382321), fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(24, 10, 24, 0),
                child: Text(
                  vrContentList[a]["info"],
                  style: TextStyle(fontSize: 14, color: Color(0xff73615D)),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(24, 24, 0, 0),
                child: Text(
                  "推荐",
                  style: TextStyle(fontSize: 18, color: Color(0xff382321), fontWeight: FontWeight.w500),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                    margin: EdgeInsets.fromLTRB(24, 10, 24, 0),
                    // transform: Matrix4.translationValues(0.0, -35.0, 0.0),
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: vrTitle.length,
                        itemBuilder: _vrs)),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                child: Text(
                  "VR全景",
                  style: TextStyle(fontSize: 18, color: Color(0xff382321), fontWeight: FontWeight.w500),
                ),
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.fromLTRB(24, 10, 24, 0),
                  child: ClipRRect(
                    // 圆角
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      vrContentList[a]["360Pic"],
                      height: 200,
                      width: 480,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                onTap: () {
                  launch(vrContentList[a]["vrUrl"]);
                },
              )
            ],
          )
        ),

      ],
    );
  }

  Widget _vrs(BuildContext context, int index) {
    return GestureDetector(
      child: Container(
        // color: Colors.red,
          padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                // 圆角
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  vrImg[index]["picUrl"],
                  width: 120,
                  height: 135,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Text(vrTitle[index]["name"], style: TextStyle(fontSize: 14,color: Color(0xff382321), )),
              )
            ],
          )),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => VRPage(vrTitle[index]["id"].toString())));
      },
    );
  }

}

//悬浮按钮位置自定义
class CustomFloatingActionButtonLocation extends FloatingActionButtonLocation {
  FloatingActionButtonLocation location;
  double offsetX;    // X方向的偏移量
  double offsetY;    // Y方向的偏移量
  CustomFloatingActionButtonLocation(this.location, this.offsetX, this.offsetY);

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    Offset offset = location.getOffset(scaffoldGeometry);
    return Offset(offset.dx + offsetX, offset.dy + offsetY);
  }
}

// Text(widget.vrid)