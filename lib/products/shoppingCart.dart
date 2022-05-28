import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Components/roundCheckBox.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);
  _CartPageState createState()=> _CartPageState();
}
class _CartPageState extends State<CartPage> {

  List goodsList = [
    {"id":0, "name": "花鸟猫咪蝴蝶折扇子8寸双面复古风女士日用大汉服绢布折叠竹扇夏", "picUrl": "assets/goodsImg/fan1.png", "price": "35.40"},
    {"id":1,  "name": "中国风春节剪纸成品儿童刻纸中国风春节手工刻纸窗花DIY图案", "picUrl": "assets/goodsImg/paperCut.png", "price": "9.99"},
    {"id":2, "name": "奥雅迪佳帆船小船模型手工木制模型船模渔船绍兴乌篷船礼物", "picUrl": "assets/goodsImg/ship.png", "price": "68.23"},
    {"id":3, "name": "夏风秋艺中国风古风复古风9寸花鸟图案绢布扇子汉服旗袍跳舞折扇", "picUrl": "assets/goodsImg/fan2.png", "price": "41.88"},
    {"id":4, "name": "原创孔府花鸟裙图案花鸟折扇子宣纸双面复古风男女汉服转扇子大风", "picUrl": "assets/goodsImg/fan3.png", "price": "37.20"},
    {"id":5, "name": "男士折扇10寸手绘宣纸古风礼品玉竹白纸扇山水文玩日用书画棕竹扇", "picUrl": "assets/goodsImg/fan4.png", "price": "24.90"},
  ];

  var selectItemValue = '0';
  List<DropdownMenuItem> generateItemList() {
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

  bool _checkbox1Selected = false;
  bool _checkbox2Selected = false;
  bool _allSelected = false;

  int num1 = 0;
  int num2 = 0;
  int num = 0;
  double sum = 0.0;
  String Sum = "0.00";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("购物车" ,style: TextStyle(color: Color(0xff382321)),),
        backgroundColor: Color(0xffF9F3EB),
        elevation: 0,
        centerTitle: true,
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
      body: Column(
        children: <Widget>[
          _CartContent1(),
          _CartContent2(),
        ],
      ),
      bottomNavigationBar: _bottom(),
      backgroundColor: Color(0xffF9F3EB),
    );
  }

  Widget _CartContent1() {
    return Container(
      margin: EdgeInsets.fromLTRB(24, 10, 24, 15),
      height: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
          color: Colors.white
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 15,
          ),
          RoundCheckBox(
              value: _checkbox1Selected,
              onChanged: (value){
                setState(() {    // 重新构建页面
                  _checkbox1Selected = value;
                  if(_checkbox1Selected == false){
                    num1=0;
                    num = num1+num2;
                    sum = num1*double.parse(goodsList[0]["price"]) + num2*double.parse(goodsList[2]["price"]);
                    Sum = sum.toStringAsFixed(2);
                  }else{
                    num1=1;
                    num = num1+num2;
                    sum = num1*double.parse(goodsList[0]["price"]) + num2*double.parse(goodsList[2]["price"]);
                    Sum = sum.toStringAsFixed(2);
                  }
                  if(_checkbox1Selected==true && _checkbox2Selected==true){
                    _allSelected = true;
                    sum = num1*double.parse(goodsList[0]["price"]) + num2*double.parse(goodsList[2]["price"]);
                    Sum = sum.toStringAsFixed(2);
                  }else{
                    _allSelected = false;
                    sum = num1*double.parse(goodsList[0]["price"]) + num2*double.parse(goodsList[2]["price"]);
                    Sum = sum.toStringAsFixed(2);
                  }
                  print('switch value is $_checkbox1Selected');
                });
              }
          ),
          Container(
            height: 100,
            width: 100,
            // color: Colors.deepOrange,
            child: Image.asset(goodsList[0]["picUrl"]),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    // color: Colors.deepOrangeAccent,
                    padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                    width: 170,
                    child: RichText(
                      // 超过两行省略
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        children: [
                          WidgetSpan(child: SizedBox(width: 4)),
                          TextSpan(
                            text: goodsList[0]["name"],
                            style: TextStyle(color:Color(0xff382321) ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    // color: Colors.blue,
                    child: Image.asset("assets/icons/bin.png",),
                    height: 25,
                    width: 25,
                  ),
                ],
              ),
              Container(
                width: 180,
                // color: Colors.amberAccent,
                margin: EdgeInsets.fromLTRB(20, 2, 0, 5),
                child: DropdownButton(
                  hint: Text('请选择一个款式'),
                  // 下拉列表的数据
                  items: generateItemList(),
                  // 改变事件
                  onChanged: (value) {
                    setState(() {
                      selectItemValue = value;
                    });
                  },
                  // 是否撑满
                  isExpanded: true,
                  value: selectItemValue,
                  // 图标大小
                  iconSize: 30,
                  // 下拉文本样式
                  style: TextStyle(color: Color(0xff73615D)),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 8, 0, 5),
                    child: Text("¥"+goodsList[0]["price"],style: TextStyle(fontSize: 17, color: Color(0xffFB8539), fontWeight: FontWeight.w500),),
                  ),
                  SizedBox(width: 75,),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          height: 20,
                          width: 20,
                          child: Image.asset("assets/icons/sub.png"),
                        ),
                        onTap: (){
                          // 最少是一件
                          if(num1>1){
                            setState(() {
                              num1--;
                              num = num1+num2;
                              sum = num1*double.parse(goodsList[0]["price"]) + num2*double.parse(goodsList[2]["price"]);
                              Sum = sum.toStringAsFixed(2);
                              print(num1);
                              print(num);
                            });
                          }
                        },
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
                        child: Text('${num1}', style: TextStyle(color: Color(0xff382321),fontSize: 16),),
                      ),
                      GestureDetector(
                        child: Container(
                          height: 20,
                          width: 20,
                          child: Image.asset("assets/icons/add.png"),
                        ),
                        onTap: (){
                          setState(() {
                            if(_checkbox1Selected == true) {
                              num1++;
                              num = num1+num2;
                              sum = num1*double.parse(goodsList[0]["price"]) + num2*double.parse(goodsList[2]["price"]);
                              Sum = sum.toStringAsFixed(2);
                              print(num1);
                            }
                          });
                        },
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _CartContent2() {
    return Container(
      margin: EdgeInsets.fromLTRB(24, 10, 24, 15),
      height: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
          color: Colors.white
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 15,
          ),
          RoundCheckBox(
              value: _checkbox2Selected,
              onChanged: (value){
                setState(() {    // 重新构建页面
                  _checkbox2Selected = value;
                  if(_checkbox2Selected == false){
                    num2=0;
                    num = num1+num2;
                    sum = num1*double.parse(goodsList[0]["price"]) + num2*double.parse(goodsList[2]["price"]);
                    Sum = sum.toStringAsFixed(2);
                  }else{
                    num2=1;
                    num = num1+num2;
                    sum = num1*double.parse(goodsList[0]["price"]) + num2*double.parse(goodsList[2]["price"]);
                    Sum = sum.toStringAsFixed(2);
                  }
                  if(_checkbox1Selected==true && _checkbox2Selected==true){
                    _allSelected = true;
                    sum = num1*double.parse(goodsList[0]["price"]) + num2*double.parse(goodsList[2]["price"]);
                    Sum = sum.toStringAsFixed(2);
                  }else{
                    _allSelected = false;
                    sum = num1*double.parse(goodsList[0]["price"]) + num2*double.parse(goodsList[2]["price"]);
                    Sum = sum.toStringAsFixed(2);
                  }
                  print('switch value is $_checkbox2Selected');
                });
              }
          ),
          Container(
            height: 100,
            width: 100,
            // color: Colors.deepOrange,
            child: Image.asset(goodsList[2]["picUrl"]),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    // color: Colors.deepOrangeAccent,
                    padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                    width: 170,
                    child: RichText(
                      // 超过两行省略
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        children: [
                          WidgetSpan(child: SizedBox(width: 4)),
                          TextSpan(
                            text: goodsList[2]["name"],
                            style: TextStyle(color:Color(0xff382321)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    // color: Colors.blue,
                    child: Image.asset("assets/icons/bin.png",),
                    height: 25,
                    width: 25,
                  ),
                ],
              ),
              Container(
                width: 180,
                // color: Colors.amberAccent,
                margin: EdgeInsets.fromLTRB(20, 2, 0, 5),
                child: DropdownButton(
                  hint: Text('请选择一个款式'),
                  // 下拉列表的数据
                  items: generate2ItemList(),
                  // 改变事件
                  onChanged: (value) {
                    setState(() {
                      select2ItemValue = value;
                    });
                  },
                  // 是否撑满
                  isExpanded: true,
                  value: select2ItemValue,
                  // 图标大小
                  iconSize: 30,
                  // 下拉文本样式
                  style: TextStyle(color: Color(0xff73615D)),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 8, 0, 5),
                    child: Text("¥"+goodsList[2]["price"],style: TextStyle(fontSize: 17, color: Color(0xffFB8539), fontWeight: FontWeight.w500),),
                  ),
                  SizedBox(width: 75,),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          height: 20,
                          width: 20,
                          child: Image.asset("assets/icons/sub.png"),
                        ),
                        onTap: (){
                          // 最少是一件
                          if(num2>1){
                            setState(() {
                              num2--;
                              num = num1+num2;
                              sum = num1*double.parse(goodsList[0]["price"]) + num2*double.parse(goodsList[2]["price"]);
                              Sum = sum.toStringAsFixed(2);
                              print(num2);
                            });
                          }
                        },
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
                        child: Text('${num2}', style: TextStyle(color: Color(0xff382321),fontSize: 16),),
                      ),
                      GestureDetector(
                        child: Container(
                          height: 20,
                          width: 20,
                          child: Image.asset("assets/icons/add.png"),
                        ),
                        onTap: (){
                          setState(() {
                            if(_checkbox2Selected) {
                              num2++;
                              num = num1+num2;
                              sum = num1*double.parse(goodsList[0]["price"]) + num2*double.parse(goodsList[2]["price"]);
                              Sum = sum.toStringAsFixed(2);
                              print(num2);
                            }
                          });
                        },
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _bottom() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        // color: Colors.deepOrangeAccent,
        border: new Border(top: BorderSide(color: Color(0xFFE5E5E5), width: 1)),
        color: Color(0xffFEFBF3),
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 15,
          ),
          RoundCheckBox(
              value: _allSelected,
              onChanged: (value){
                setState(() {    // 重新构建页面
                  _allSelected = value;
                  if(_allSelected == true){
                    _checkbox1Selected = true;
                    _checkbox2Selected = true;
                  }else {
                    _checkbox1Selected = false;
                    _checkbox2Selected = false;
                  }
                  if(_checkbox1Selected == false){
                    num1=0;
                    num = num1+num2;
                  }else{
                    num1=1;
                    num = num1+num2;
                  }
                  if(_checkbox2Selected == false){
                    num2=0;
                    num = num1+num2;
                  }else{
                    num2=1;
                    num = num1+num2;
                  }
                  print('switch value is $_allSelected');
                });
              }
          ),
          Text("全选",style: TextStyle(color:Color(0xff382321))),
          SizedBox(
            width: 110,
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("合计",style: TextStyle(color:Color(0xff382321))),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 8, 0, 5),
                    child: Text("¥"+Sum,style: TextStyle(fontSize: 25, color: Color(0xffFB8539), fontWeight: FontWeight.w500),),
                  ),
                ],
              ),
              Text("共"+"$num"+"件，优惠¥0元",style: TextStyle(color:Color(0xff382321))),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 80,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(20), right: Radius.circular(20)),
                color: Color(0xffFB8539)),
              child: Center(
                child: Text("结算",style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),)
            ),
          )
        ],
      ),
    );
  }
}