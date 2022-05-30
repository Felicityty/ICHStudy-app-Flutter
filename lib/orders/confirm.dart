import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './success.dart';

class ConfirmPage extends StatefulWidget {
  String goodid;
  String goodNum;
  String goodPattern;
  ConfirmPage(this.goodid, this.goodNum, this.goodPattern);
  // ConfirmPage({Key key}) : super(key: key);
  _ConfirmPageState createState()=> _ConfirmPageState();
}
class _ConfirmPageState extends State<ConfirmPage> {

  List info = [
    {
      "name": "fffffff",
      "phone": "19812345678",
      "address": "浙江省 杭州市 西湖区 留下街道 留和路318号浙江科技学院西和公寓8#"
    }
  ];

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

  List pattern = [
    "A款（35*10*11cm）",
    "B款（35*10*11cm）",
    "C款（35*10*11cm）",
    "D款（35*10*11cm）"
  ];

  bool _visible = false;

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("确认订单",style: TextStyle(color: Color(0xff382321)),),
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
          body: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  _addressContent(),
                  _orderContent(),
                  _comments()
                ],
              ),
              _choosePay(),
            ],
          ),
          bottomNavigationBar: _bottom(),
          backgroundColor: Color(0xffF9F3EB)
      ),
    );
  }

  Widget _choosePay() {
    int a = int.parse(widget.goodid);
    int num = int.parse(widget.goodNum);
    int pat = int.parse(widget.goodPattern);
    double price = double.parse(goodsList[a]["price"]);
    double sum = 0.0;
    String Sum = "0.00";

    setState(() {
      sum = num * price;
      Sum = sum.toStringAsFixed(2);
    });
    final h =MediaQuery.of(context).size.height;
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
              padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Colors.white,
              ),
              height: 250,
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        border: new Border(bottom: BorderSide(color: Color(0xFFE5E5E5), width: 1)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height:50,
                            width: 50,
                            child: Image.asset("assets/pay/weixin.png"),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            child: Text("微信支付", style: TextStyle(color: Color(0xff382321),fontSize: 18, fontWeight: FontWeight.w500)),
                          ),
                          SizedBox(width: 200,),
                          Container(
                            height: 16,
                            width: 16,
                            child: Image.asset("assets/icons/arrowDownGrey.png"),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        Fluttertoast.showToast(msg: "支付成功",gravity: ToastGravity.CENTER,);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessPage(a.toString(), num.toString(), pat.toString())));
                      });
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      height: 80,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height:50,
                            width: 50,
                            child: Image.asset("assets/pay/zhifubao.png"),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            child: Text("支付宝支付", style: TextStyle(color: Color(0xff382321),fontSize: 18, fontWeight: FontWeight.w500)),
                          ),
                          SizedBox(width: 183,),
                          Container(
                            height: 16,
                            width: 16,
                            child: Image.asset("assets/icons/arrowDownGrey.png"),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        Fluttertoast.showToast(msg: "支付成功",gravity: ToastGravity.CENTER,);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessPage(a.toString(), num.toString(), pat.toString())));
                      });
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      height: 40,
                      width: 370,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
                          color: Color(0xFFE5E5E5)
                      ),
                      child: Center(
                        child: Text("取消支付",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 18),),
                      ),
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
          )
        ],
      ),
    );
  }

  Widget _addressContent() {
    // info[0]["name"] = widget.addname;
    return Container(
      margin: EdgeInsets.fromLTRB(24, 20, 24, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
          color: Colors.white
      ),
      height: 100,
      width: 380,
      child: Column(
        children: <Widget>[
          // SizedBox(height: 5,),
          Container(
            // color: Colors.amberAccent,
            height: 100,
            width: 380,
            child: Row(
              children: <Widget>[
                SizedBox(width: 10,),
                Container(
                  height: 32,
                  width: 32,
                  child: Image.asset("assets/icons/address.png"),
                ),
                SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 15,),
                    Row(
                      children: <Widget>[
                        Text(info[0]["name"],style: TextStyle(color:Color(0xff382321), fontSize: 20, fontWeight: FontWeight.w600)),
                        SizedBox(width: 20,),
                        Text(info[0]["phone"],style: TextStyle(color:Color(0xff382321), fontSize: 16,)),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Container(
                      // color: Colors.deepOrangeAccent,
                      width: 280,
                      height: 40,
                      child: Text(info[0]["address"],style: TextStyle(color:Color(0xff73615D))),
                    )
                  ],
                ),
                SizedBox(width: 10,),
                GestureDetector(
                  child: Container(
                    height: 16,
                    width: 16,
                    child: Image.asset("assets/icons/arrowDownGrey.png"),
                  ),
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => AddsmodifyPage()));
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _orderContent() {
    int a = int.parse(widget.goodid);
    int num = int.parse(widget.goodNum);
    int pat = int.parse(widget.goodPattern);
    double price = double.parse(goodsList[a]["price"]);
    double sum = 0.0;
    String Sum = "0.00";

    setState(() {
      sum = num * price;
      Sum = sum.toStringAsFixed(2);
    });

    return Container(
      width: 380,
      height: 310,
      margin: EdgeInsets.fromLTRB(24, 20, 24, 0),
      padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
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
                  child: Image.asset(goodsList[a]["picUrl"], fit: BoxFit.fitWidth,),
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
                                      text: goodsList[a]["name"],
                                      style: TextStyle(color:Color(0xff382321)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Text("¥ "+goodsList[a]["price"],style: TextStyle(fontSize: 17, color: Color(0xff382321), fontWeight: FontWeight.w500),),
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
                              child: Text(pattern[pat],style: TextStyle(color: Color(0xff73615D)),
                              ),),
                            Container(
                              child: Text("X"+'$num',style: TextStyle(color: Color(0xff382321)),
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
              padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text("邮费",style: TextStyle(color: Color(0xff73615D)),
                    ),),
                  SizedBox(width: 270,),
                  Container(
                    child: Text("包邮",style: TextStyle(color: Color(0xff382321)),
                    ),),
                ],
              ),
            ),
            SizedBox(height: 4,),
            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 0, 20),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text("店铺优惠",style: TextStyle(color: Color(0xff73615D)),
                    ),),
                  SizedBox(width: 250,),
                  Container(
                    child: Text("¥ 0",style: TextStyle(color: Color(0xff382321)),
                    ),),
                ],
              ),
                decoration: BoxDecoration(
                  // color: Colors.deepOrangeAccent,
                  border: new Border(bottom: BorderSide(color: Color(0xFFE5E5E5), width: 1)),
                )
            ),
            Container(
              width: 340,
              padding: EdgeInsets.fromLTRB(15, 25, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Text("订单总金额",style: TextStyle(color: Color(0xff73615D)),
                    ),),
                  Container(
                    child: Text("¥ "+Sum,style: TextStyle(color: Color(0xff382321),fontWeight: FontWeight.w500),
                    ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _comments() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
          color: Colors.white
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
                padding: EdgeInsets.fromLTRB(28, 0, 0, 0),
                child: Text("备注",style: TextStyle(color: Color(0xff382321)),),
                height: 50,
                alignment: Alignment.center,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(280, 0, 0, 0),
                child: Image.asset(
                  "assets/icons/arrowDownGrey.png",
                  width: 15,
                  height: 15,
                ),
              )
            ],
          ),
        ),
        onTap: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
        },
      ),
    );
  }

  Widget _bottom() {
    int a = int.parse(widget.goodid);
    int num = int.parse(widget.goodNum);
    double price = double.parse(goodsList[a]["price"]);
    double sum = 0.0;
    String Sum = "0.00";

    setState(() {
      sum = num * price;
      Sum = sum.toStringAsFixed(2);
    });
    return Visibility(
      visible: !_visible,
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          // color: Colors.deepOrangeAccent,
          border: new Border(top: BorderSide(color: Color(0xFFE5E5E5), width: 1)),
          color: Color(0xffFEFBF3),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 34,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("共 1 件，",style: TextStyle(color:Color(0xff73615D))),
                    Text("合计",style: TextStyle(color:Color(0xff73615D))),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 8, 0, 5),
                      child: Text("¥ "+ Sum,style: TextStyle(fontSize: 25, color: Color(0xffFB8539), fontWeight: FontWeight.w500),),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 110,
            ),
            GestureDetector(
              child: Container(
                width: 80,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(20), right: Radius.circular(20)),
                    color: Color(0xffFB8539)),
                child: Center(
                    child: Text("结算",style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),)
                ),
              ),
              onTap: (){
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