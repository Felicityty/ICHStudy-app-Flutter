import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../products/productsList.dart';

class GoodsPage extends StatefulWidget {
  String goodid;
  GoodsPage(this.goodid);
  // GoodsPage({Key key}) : super(key: key);
  _GoodsPageState createState()=> _GoodsPageState();
}
class _GoodsPageState extends State<GoodsPage> {

  List goodsList =[
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
      "id":1,
      "name": "中国风春节剪纸成品儿童刻纸中国风春节手工刻纸窗花DIY图案",
      "picUrl": "assets/goodsImg/paperCut.png",
      "price": "9.99",
      "people": "1000",
      "pic": "assets/goodsInfo/papercut.jpg",
      "pattern" :["A款-小朋友", "B款-花", "C款-灯笼", "D款-蝴蝶"],
    },
    {
      "id":2,
      "name": "奥雅迪佳帆船小船模型手工木制模型船模渔船绍兴乌篷船礼物",
      "picUrl": "assets/goodsImg/ship.png",
      "price": "68.23",
      "people": "200",
      "pic": "assets/goodsInfo/ship.jpg",
      "pattern" :["渔船", "民船", "商船", "乌篷船"],
    },
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
      "id":4,
      "name": "原创孔府花鸟裙图案花鸟折扇子宣纸双面复古风男女汉服转扇子大风",
      "picUrl": "assets/goodsImg/fan3.png",
      "price": "37.20",
      "people": "500",
      "pic": "assets/goodsInfo/fan3.jpg",
      "pattern" :["A款（35*10*11cm）", "B款（35*10*11cm）", "C款（35*10*11cm）", "D款（35*10*11cm）"],
    },
    {
      "id":5,
      "name": "男士折扇10寸手绘宣纸古风礼品玉竹白纸扇山水文玩日用书画棕竹扇",
      "picUrl": "assets/goodsImg/fan4.png",
      "price": "24.90",
      "people": "300",
      "pic": "assets/goodsInfo/fan4.jpg",
      "pattern" :["A款（35*10*11cm）", "B款（35*10*11cm）", "C款（35*10*11cm）", "D款（35*10*11cm）"],
    },
  ];

  var select1ItemValue = '0';
  List<DropdownMenuItem> generate1ItemList() {
    final List<DropdownMenuItem> items = List();
    final DropdownMenuItem item1 = DropdownMenuItem(
      child: Text('A款（35*10*11cm）'), value: '0',);
    final DropdownMenuItem item2 = DropdownMenuItem(
      child: Text('B款（35*10*11cm）'), value: '1',);
    final DropdownMenuItem item3 = DropdownMenuItem(
      child: Text('C款（35*10*11cm）'), value: '2',);
    final DropdownMenuItem item4 = DropdownMenuItem(
      child: Text('D款（35*10*11cm）'), value: '3',);
    items.add(item1);
    items.add(item2);
    items.add(item3);
    items.add(item4);
    return items;
  }

  var select2ItemValue = '0';
  List<DropdownMenuItem> generate2ItemList() {
    final List<DropdownMenuItem> items = List();
    final DropdownMenuItem item1 = DropdownMenuItem(
      child: Text('渔船'), value: '0',);
    final DropdownMenuItem item2 = DropdownMenuItem(
      child: Text('民船'), value: '1',);
    final DropdownMenuItem item3 = DropdownMenuItem(
      child: Text('商船'), value: '2',);
    final DropdownMenuItem item4 = DropdownMenuItem(
      child: Text('乌篷船'), value: '3',);
    items.add(item1);
    items.add(item2);
    items.add(item3);
    items.add(item4);
    return items;
  }

  int num = 1;
  bool _visible = false;

  ScrollController scrollController;
  ///false 代表没折叠  true代表折叠
  bool silverCollapsed = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = new ScrollController();
    scrollController.addListener(() {
      if (scrollController.offset >= 130) {
        silverCollapsed = true;
      } else {
        silverCollapsed = false;
      }
      setState(() {

      });
    });
  }

  Widget build(BuildContext context) {

    final h =MediaQuery.of(context).size.height;
    int a = int.parse(widget.goodid);

    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            RefreshIndicator(
              ///转动箭头颜色
              color: Color(0xff7A5A32),
              ///背景颜色
              backgroundColor: Color(0xffdedede),
              onRefresh: () async{
                setState(() {
                  /// 下拉刷新回调
                });
              },
              child: CustomScrollView(
                controller: scrollController,
                slivers: <Widget>[
                  SliverAppBar(
                    backgroundColor: Color(0xffF9F3EB),
                    pinned: true,
                    ///这个是高度
                    expandedHeight: 450.0,
                    leading: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff7A5A32),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text(silverCollapsed ? '商品详情' :'',style: TextStyle(color: Color(0xff382321)),),
                      background: Image.asset(
                        goodsList[a]["picUrl"],
                        // width: double.infinity,
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return Container(
                        color: Colors.deepOrange,
                        child: Column(
                          children: <Widget>[
                            _info(),
                            SizedBox(height: 15,),
                            _recommend(),
                            SizedBox(height: 15,),
                            _pic()
                          ],
                        ),
                      );
                    },
                        childCount: 1
                    ),
                  )
                ],
              ),
            ),
            _pattern(h, a),
          ],
        ),
        bottomNavigationBar: _bonttom(h),
      ),
    );
  }

  Widget _pattern(var h, var a) {
    return Visibility(
      visible: _visible,
      child: Stack(
        children: <Widget>[
          Container(
            height: h,
            color: Color(0x660C0C0C),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              height: 500,
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 24, 24, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                        height: 15,
                        width: 15,
                        child: Image.asset("assets/icons/cha.png"),
                      ),
                      onTap: (){
                        setState(() {
                          _visible = !_visible;
                        });
                      },
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Container(
                          height: 150,
                          width: 150,
                          child: Image.asset(goodsList[a]["picUrl"]),
                        ),
                        SizedBox(width: 30,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 30,),
                            Container(
                              child: Text("¥"+goodsList[a]["price"],style: TextStyle(fontSize: 28, color: Color(0xffFB8539), fontWeight: FontWeight.w500),),
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: <Widget>[
                                Text("库存  ", style: TextStyle(fontSize: 16, color: Color(0xff73615D)),),
                                Text("273", style: TextStyle(fontSize: 17, color: Color(0xff73615D), fontWeight: FontWeight.w500),)
                              ],
                            ),
                            SizedBox(height: 6,),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    // 选择款式
                    Row(
                      children: <Widget>[
                        Container(
                          child: Text("选择款式",style: TextStyle(fontSize: 16, color: Color(0xff73615D)),
                        ),),
                        Container(
                          width: 270,
                          // color: Colors.amberAccent,
                          margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: DropdownButton(
                            hint: Text('请选择一个款式'),
                            // 下拉列表的数据
                            items: a==2 ? generate2ItemList() : generate1ItemList(),
                            // 改变事件
                            onChanged: (value) {
                              setState(() {
                                a==2 ? select2ItemValue:select1ItemValue = value;
                              });
                            },
                            // 是否撑满
                            isExpanded: true,
                            value: a==2 ? select2ItemValue:select1ItemValue,
                            // 图标大小
                            iconSize: 35,
                            // 下拉文本样式
                            style: TextStyle(color: Color(0xff73615D),fontSize: 16),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    //  数量
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text("数量",style: TextStyle(fontSize: 16, color: Color(0xff73615D)),
                            ),),
                          SizedBox(width: 255,),
                          Row(
                            children: <Widget>[
                              GestureDetector(
                                child: Container(
                                  height: 23,
                                  width: 23,
                                  child: Image.asset("assets/icons/sub.png"),
                                ),
                                onTap: (){
                                  // 最少是一件
                                  if(num>1){
                                    setState(() {
                                      num--;
                                      print(num);
                                    });
                                  }
                                },
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Text('${num}', style: TextStyle(color: Color(0xff382321),fontSize: 16, fontWeight: FontWeight.w500),),
                              ),
                              GestureDetector(
                                child: Container(
                                  height: 23,
                                  width: 23,
                                  child: Image.asset("assets/icons/add.png"),
                                ),
                                onTap: (){
                                  setState(() {
                                    num++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 150,),
                    GestureDetector(
                      child: Container(
                        height: 40,
                        width: 370,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
                            color: Color(0xffFB8539)
                        ),
                        child: Center(
                          child: Text("确定",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => AddressPage(name)));
                      },
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _info() {
    int a = int.parse(widget.goodid);
    return Container(
      height: 310,
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(24, 30, 24, 5),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Text("¥"+goodsList[a]["price"],style: TextStyle(fontSize: 28, color: Color(0xffFB8539), fontWeight: FontWeight.w500),),
              ),
              SizedBox(width: 200,),
              Container(
                child: Text(goodsList[a]["people"]+"+人买过 ",style: TextStyle(fontSize: 14 , color: Color(0xff73615D)),),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Text(goodsList[a]["name"],style: TextStyle(fontSize: 20, color: Color(0xff382321), fontWeight: FontWeight.w500),),
            decoration: BoxDecoration(
              // color: Colors.deepOrangeAccent,
              border: new Border(bottom: BorderSide(color: Color(0xFFE5E5E5), width: 1)),
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
                  child: Text("发货",style: TextStyle(fontSize: 14 , color: Color(0xff73615D)),),
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("浙江杭州  快递：包邮",style: TextStyle(fontSize: 14 , color: Color(0xff382321)),),
                    Text("付款后三天发货",style: TextStyle(fontSize: 12 , color: Color(0xff73615D)),)
                  ],
                )
              ],
            ),
              decoration: BoxDecoration(
                // color: Colors.deepOrangeAccent,
                border: new Border(bottom: BorderSide(color: Color(0xFFE5E5E5), width: 1)),
              )
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
                  child: Text("选择",style: TextStyle(fontSize: 14 , color: Color(0xff73615D)),),
                ),
                SizedBox(width: 5,),
                Container(
                  width: 200,
                  // color: Colors.amberAccent,
                  margin: EdgeInsets.fromLTRB(20, 2, 0, 5),
                  child: DropdownButton(
                    hint: Text('请选择一个款式'),
                    // 下拉列表的数据
                    items: a==2 ? generate2ItemList() : generate1ItemList(),
                    // 改变事件
                    onChanged: (value) {
                      setState(() {
                        a==2 ? select2ItemValue:select1ItemValue = value;
                      });
                    },
                    // 是否撑满
                    isExpanded: true,
                    value: a==2 ? select2ItemValue:select1ItemValue,
                    // 图标大小
                    iconSize: 30,
                    // 下拉文本样式
                    style: TextStyle(color: Color(0xff382321)),
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }

  Widget _recommend() {
    int a = int.parse(widget.goodid);
    int b = 4;
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(24, 20, 0, 15),
                child: Text("本店推荐",style: TextStyle(fontSize: 20, color: Color(0xff382321), fontWeight: FontWeight.w500),),
              ),
              Spacer(flex: 2,),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  width: 120,
                  height: 68,
                  // color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("全部商品", style: TextStyle(color: Color(0xff73615D)),),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage()));
                },
              )
            ],
          ),
          Row(
            children: <Widget>[
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 24, 20),
                  width: 210,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 130,
                        width: 140,
                        child: Image.asset(goodsList[b]["picUrl"]),
                      ),
                      Container(
                          child: Text(goodsList[b]["name"],overflow: TextOverflow.ellipsis,
                            maxLines: 2,style: TextStyle( color: Color(0xff382321)),)
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Text("¥"+goodsList[b]["price"],style: TextStyle(fontSize: 17, color: Color(0xffFB8539), fontWeight: FontWeight.w500),),
                      )
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GoodsPage("4")));
                },
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.fromLTRB(24, 0, 24, 20),
                  width: 210,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 130,
                        width: 140,
                        child: Image.asset(goodsList[b+1]["picUrl"], fit: BoxFit.fitHeight,),
                      ),
                      Container(
                          child: Text(goodsList[b+1]["name"],overflow: TextOverflow.ellipsis,
                            maxLines: 2,style: TextStyle( color: Color(0xff382321)),)
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Text("¥"+goodsList[b+1]["price"],style: TextStyle(fontSize: 17, color: Color(0xffFB8539), fontWeight: FontWeight.w500),),
                      )
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GoodsPage("5")));
                },
              )
            ],
          )

        ],
      ),
    );
  }

  Widget _pic() {
    int a = int.parse(widget.goodid);
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(24, 20, 0, 15),
            child: Text("商品详情",style: TextStyle(fontSize: 20, color: Color(0xff382321), fontWeight: FontWeight.w500),),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            color: Colors.amber,
            child: Image.asset(goodsList[a]["pic"],fit: BoxFit.fitWidth,),
          )
        ],
      ),
    );
  }

  Widget _bonttom(var h) {
    return Visibility(
      visible: !_visible,
      child: Container(
        height: 68,
        decoration: BoxDecoration(
          // color: Colors.deepOrangeAccent,
          border: new Border(top: BorderSide(color: Color(0xFFE5E5E5), width: 1)),
          color: Color(0xffFEFBF3),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(width: 30,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset("assets/icons/kefu.png"),
                ),
                Container(
                    child: Text("客服",style: TextStyle(color: Color(0xff73615D), fontSize: 12),)
                )
              ],
            ),
            SizedBox(width: 30,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset("assets/icons/shopcart.png"),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text("购物车",style: TextStyle(color: Color(0xff73615D), fontSize: 12),)
                )
              ],
            ),
            SizedBox(width: 70,),
            Container(
                padding: EdgeInsets.fromLTRB(15, 7, 0, 0),
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
                  color: Color(0xffFB8539),
                ),
                child:Text("加入购物车",style: TextStyle(color: Colors.white,fontSize: 16, ),
                )
            ),
            GestureDetector(
              child: Container(
                  padding: EdgeInsets.fromLTRB(13, 7, 0, 0),
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
                    color: Color(0xffFB8539),
                  ),
                  child: Text("立即付款",style: TextStyle(color: Colors.white,fontSize: 16, ),
                  )
              ),
              onTap: () {
                setState(() {
                  _visible = !_visible;
                });
              },
            )
          ],
        ),
      ),
    );
  }

}

