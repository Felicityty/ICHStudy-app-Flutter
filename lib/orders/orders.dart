import 'package:flutter/material.dart';
import './star.dart';

class OrdersPage extends StatefulWidget {
  OrdersPage({Key key}) : super(key: key);
  _OrdersPageState createState()=> _OrdersPageState();
}
class _OrdersPageState extends State<OrdersPage> {

  List info = [
    {
      "name": "fffffff",
      "phone": "19812345678",
      "address": "浙江省 杭州市 西湖区 留下街道 留和路318号浙江科技学院西和公寓8#"
    }
  ];

  List goodsList =[
    {
      "id":3,
      "name": "夏风秋艺中国风古风复古风9寸花鸟图案绢布扇子汉服旗袍跳舞折扇",
      "picUrl": "assets/goodsImg/fan2.png",
      "price": "41.88",
      "people": "400",
      "pic": "assets/goodsInfo/fan2.png",
      "pattern" :["A款（35*10*11cm）", "B款（35*10*11cm）", "C款（35*10*11cm）", "D款（35*10*11cm）"],
    },
    {
      "id":0,
      "name": "花鸟猫咪蝴蝶折扇子8寸双面复古风女士日用大汉服绢布折叠竹扇夏",
      "picUrl": "assets/goodsImg/fan1.png",
      "price": "35.40",
      "people": "600",
      "pic": "assets/goodsInfo/fan1.jpg",
      "pattern" :["A款（35*10*11cm）", "B款（35*10*11cm）", "C款（35*10*11cm）", "D款（35*10*11cm）"],
    },
    {
      "id":4,
      "name": "原创孔府花鸟裙图案花鸟折扇子宣纸双面复古风男女汉服转扇子大风",
      "picUrl": "assets/goodsImg/fan3.png",
      "price": "37.20",
      "people": "500",
      "pic": "assets/goodsInfo/fan3.jpg",
      "pattern" :["A款（35*10*11cm）", "B款（35*10*11cm）", "C款（35*10*11cm）", "D款（35*10*11cm）"],
    },
  ];

  List pattern = [
    "A款（35*10*11cm）",
    "B款（35*10*11cm）",
    "C款（35*10*11cm）",
    "D款（35*10*11cm）"
  ];

  bool _visible1 = false;
  bool _visible2 = false;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      // debugShowCheckedModeBanner: false,
      child: Scaffold(
          appBar: AppBar(
            title: Text("我的订单",style: TextStyle(color: Color(0xff382321)),),
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
            bottom: _tabbar(),
          ),
          body: _ordersContent(),
          backgroundColor: Color(0xffF9F3EB)
      ),
    );
  }

  Widget _tabbar() {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Color(0xff7A5A32),
        // 选中标签的颜色
        labelColor: Color(0xff382321),
        // 未选中标签的颜色
        unselectedLabelColor: Color(0xff73615D),
        // 标签
      tabs: <Widget>[
        Tab(text:"全部"),
        Tab(text:"待发货"),
        Tab(text:"待收货"),
        Tab(text:"待评价"),
      ],

    );
  }

  Widget _ordersContent() {
    return TabBarView(
      children: <Widget>[
        _all(),
        _wait(),
        _collect(),
        _comment(),
      ],
    );
  }

  Widget _all() {
    DateTime dateTime1;
    DateTime dateTime2;
    setState(() {
      dateTime1 = DateTime.now();
      dateTime2 = dateTime1.add(new Duration(minutes: -5));
    });
    return Column(
      children: <Widget>[
        Container(
          width: 380,
          margin: EdgeInsets.fromLTRB(24, 15, 24, 0),
          padding: EdgeInsets.fromLTRB(15, 5, 15, 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
              color: Colors.white
          ),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 130,
                      width: 130,
                      alignment: Alignment.center,
                      child: Image.asset(goodsList[0]["picUrl"], fit: BoxFit.fitWidth,),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 15, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 205,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  width: 140,
                                  child: RichText(
                                    // 超过两行省略
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(child: SizedBox(width: 4)),
                                        TextSpan(
                                          text: goodsList[0]["name"],
                                          style: TextStyle(color:Color(0xff382321)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text("¥ "+goodsList[0]["price"],style: TextStyle(fontSize: 17, color: Color(0xff382321), fontWeight: FontWeight.w500),),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            width: 205,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Text(pattern[1],style: TextStyle(color: Color(0xff73615D)),
                                  ),),
                                Container(
                                  child: Text("X 1",style: TextStyle(color: Color(0xff382321)),
                                  ),),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  width: 340,
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text("订单总金额",style: TextStyle(color: Color(0xff73615D)),
                        ),),
                      Container(
                        child: Text("¥ 41.88",style: TextStyle(color: Color(0xff382321),fontWeight: FontWeight.w500),
                        ),),
                    ],
                  ),
                ),
                GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(_visible1 ? "收起": "查看详情"),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 14,
                        width: 14,
                        child: Image.asset(_visible1 ? "assets/icons/arrowUpBrown.png":"assets/icons/arrowDownBrown.png"),
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      _visible1 = ! _visible1;
                    });
                  },
                ),
                Visibility(
                  visible: _visible1,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Text("邮费:  包邮",style: TextStyle(color: Color(0xff73615D)),
                                ),),
                            ],
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text("店铺优惠:  ¥ 0",style: TextStyle(color: Color(0xff73615D)),
                                  ),),
                              ],
                            )
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text("收货人： " + info[0]["name"],style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Text("收货人手机号码： " + info[0]["phone"],style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Text("收货人地址： " + info[0]["address"],style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Text("订单编号： " + "23279492842394723874328842",style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Text("创建时间： " + dateTime2.toString().substring(0,19),style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Text("付款时间： " + dateTime1.toString().substring(0,19),style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                              ],
                            )
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          width: 380,
          margin: EdgeInsets.fromLTRB(24, 10, 24, 0),
          padding: EdgeInsets.fromLTRB(15, 5, 15, 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
              color: Colors.white
          ),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 130,
                      width: 130,
                      alignment: Alignment.center,
                      child: Image.asset(goodsList[1]["picUrl"], fit: BoxFit.fitWidth,),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 15, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 205,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  width: 140,
                                  child: RichText(
                                    // 超过两行省略
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(child: SizedBox(width: 4)),
                                        TextSpan(
                                          text: goodsList[1]["name"],
                                          style: TextStyle(color:Color(0xff382321)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text("¥ "+goodsList[1]["price"],style: TextStyle(fontSize: 17, color: Color(0xff382321), fontWeight: FontWeight.w500),),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            width: 205,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Text(pattern[3],style: TextStyle(color: Color(0xff73615D)),
                                  ),),
                                Container(
                                  child: Text("X 1",style: TextStyle(color: Color(0xff382321)),
                                  ),),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  width: 340,
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text("订单总金额",style: TextStyle(color: Color(0xff73615D)),
                        ),),
                      Container(
                        child: Text("¥ 35.40",style: TextStyle(color: Color(0xff382321),fontWeight: FontWeight.w500),
                        ),),
                    ],
                  ),
                ),
                GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(_visible2 ? "收起": "查看详情"),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 14,
                        width: 14,
                        child: Image.asset(_visible2 ? "assets/icons/arrowUpBrown.png":"assets/icons/arrowDownBrown.png"),
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      _visible2 = ! _visible2;
                    });
                  },
                ),
                Visibility(
                  visible: _visible2,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Text("邮费:  包邮",style: TextStyle(color: Color(0xff73615D)),
                                ),),
                            ],
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text("店铺优惠:  ¥ 0",style: TextStyle(color: Color(0xff73615D)),
                                  ),),
                              ],
                            )
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text("收货人： " + info[0]["name"],style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Text("收货人手机号码： " + info[0]["phone"],style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Text("收货人地址： " + info[0]["address"],style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Text("订单编号： " + "23279492842394723874328842",style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Text("创建时间： " + dateTime2.toString().substring(0,19),style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Text("付款时间： " + dateTime1.toString().substring(0,19),style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                              ],
                            )
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _wait() {
    return Center(
      child: Container(
        child: Text("您还没有相关订单", style: TextStyle(fontSize: 16, color: Color(0xff382321)),),
      ),
    );
  }

  Widget _collect() {
    return Center(
      child: Container(
        child: Text("您还没有相关订单", style: TextStyle(fontSize: 16, color: Color(0xff382321)),),
      ),
    );
  }

  Widget _comment(){
    DateTime dateTime1;
    DateTime dateTime2;
    setState(() {
      dateTime1 = DateTime.now();
      dateTime2 = dateTime1.add(new Duration(minutes: -5));
    });
    return Column(
      children: <Widget>[
        Container(
          width: 380,
          margin: EdgeInsets.fromLTRB(24, 15, 24, 0),
          padding: EdgeInsets.fromLTRB(15, 5, 15, 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
              color: Colors.white
          ),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 130,
                      width: 130,
                      alignment: Alignment.center,
                      child: Image.asset(goodsList[0]["picUrl"], fit: BoxFit.fitWidth,),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 15, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 205,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  width: 140,
                                  child: RichText(
                                    // 超过两行省略
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(child: SizedBox(width: 4)),
                                        TextSpan(
                                          text: goodsList[0]["name"],
                                          style: TextStyle(color:Color(0xff382321)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text("¥ "+goodsList[0]["price"],style: TextStyle(fontSize: 17, color: Color(0xff382321), fontWeight: FontWeight.w500),),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            width: 205,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Text(pattern[1],style: TextStyle(color: Color(0xff73615D)),
                                  ),),
                                Container(
                                  child: Text("X 1",style: TextStyle(color: Color(0xff382321)),
                                  ),),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  width: 340,
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text("订单总金额",style: TextStyle(color: Color(0xff73615D)),
                        ),),
                      Container(
                        child: Text("¥ 41.88",style: TextStyle(color: Color(0xff382321),fontWeight: FontWeight.w500),
                        ),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(8, 3, 8, 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
                            border: Border.all(width: 1, color: Color(0xffFB8539)),
                            color: Color(0xffFB8539)
                        ),
                        child: Text(" 立即评价 ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
                        ),)
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => StarPage()));
                  },
                ),
                GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(_visible1 ? "收起": "查看详情"),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 14,
                        width: 14,
                        child: Image.asset(_visible1 ? "assets/icons/arrowUpBrown.png":"assets/icons/arrowDownBrown.png"),
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      _visible1 = ! _visible1;
                    });
                  },
                ),
                Visibility(
                  visible: _visible1,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Text("邮费:  包邮",style: TextStyle(color: Color(0xff73615D)),
                                ),),
                            ],
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text("店铺优惠:  ¥ 0",style: TextStyle(color: Color(0xff73615D)),
                                  ),),
                              ],
                            )
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text("收货人： " + info[0]["name"],style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Text("收货人手机号码： " + info[0]["phone"],style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Text("收货人地址： " + info[0]["address"],style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Text("订单编号： " + "23279492842394723874328842",style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Text("创建时间： " + dateTime2.toString().substring(0,19),style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Text("付款时间： " + dateTime1.toString().substring(0,19),style: TextStyle(color: Color(0xff73615D)),
                                  ),
                                ),
                              ],
                            )
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }




}