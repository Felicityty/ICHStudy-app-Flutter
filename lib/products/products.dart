import 'package:demo30/products/shoppingCart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Components/search.dart';
import '../products/shoppingCart.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  // List nameList = new List();

  List goodsList =[
    {"id":0, "name": "花鸟猫咪蝴蝶折扇子8寸双面复古风女士日用大汉服绢布折叠竹扇夏", "picUrl": "assets/goodsImg/fan1.png", "price": "35.40", "people": "600"},
    {"id":1,  "name": "中国风春节剪纸成品儿童刻纸中国风春节手工刻纸窗花DIY图案", "picUrl": "assets/goodsImg/paperCut.png", "price": "9.99", "people": "1000"},
    {"id":2, "name": "奥雅迪佳帆船小船模型手工木制模型船模渔船绍兴乌篷船礼物", "picUrl": "assets/goodsImg/ship.png", "price": "68.23", "people": "200"},
    {"id":3, "name": "夏风秋艺中国风古风复古风9寸花鸟图案绢布扇子汉服旗袍跳舞折扇", "picUrl": "assets/goodsImg/fan2.png", "price": "41.88", "people": "400"},
    {"id":4, "name": "原创孔府花鸟裙图案花鸟折扇子宣纸双面复古风男女汉服转扇子大风", "picUrl": "assets/goodsImg/fan3.png", "price": "37.20", "people": "500"},
    {"id":5, "name": "男士折扇10寸手绘宣纸古风礼品玉竹白纸扇山水文玩日用书画棕竹扇", "picUrl": "assets/goodsImg/fan4.png", "price": "24.90", "people": "300"},
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("文创产品" ,style: TextStyle(color: Color(0xff382321)),),
        backgroundColor: Color(0xffF9F3EB),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          // 搜索
          searchWidget(),
          _title(),
          _productContent(),
        ],
      ),
      backgroundColor: Color(0xffF9F3EB),
      floatingActionButton: SizedBox(
        height: 45,
        width: 45,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CartPage()));
          },
          child: Icon(Icons.shopping_cart, color: Colors.white,),
          backgroundColor: Color(0xffFB8539),
          elevation: 1,
        ),
      ),
      floatingActionButtonLocation:CustomFloatingActionButtonLocation(  // 自定义悬浮按钮
          FloatingActionButtonLocation.endTop, -10, -25),
    );
  }

  Widget _title() {
    return Container(
      child: Wrap(
        spacing: 110,
        children: <Widget>[
          Text("综合" ,style: TextStyle(color: Color(0xff382321),fontSize: 16),),
          Text("销量" ,style: TextStyle(color: Color(0xff382321),fontSize: 16),),
          Text("价格" ,style: TextStyle(color: Color(0xff382321),fontSize: 16),),
        ],
      ),
    );
  }

  Widget _productContent() {
    return Expanded(   // column会和gridview冲突的
      child: Container(
        padding: EdgeInsets.fromLTRB(24, 15, 24, 0),
          child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: _goods(6),
        ),
      )
    );
  }

  List<Container> _goods(int count) {
    return List.generate(count, (int index) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              width: 180,
              alignment: Alignment.center,
              child: Image.asset(goodsList[index]["picUrl"]),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(13, 10, 13, 10),
              child: RichText(
                // 超过两行省略
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  children: [
                    WidgetSpan(child: Label()),
                    WidgetSpan(child: SizedBox(width: 4)),
                    TextSpan(
                      text: goodsList[index]["name"],
                      style: TextStyle(color:Color(0xff382321) ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(16, 5, 0, 5),
                  child: Text("¥"+goodsList[index]["price"],style: TextStyle(fontSize: 17, color: Color(0xffFB8539), fontWeight: FontWeight.w500),),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(36, 5, 13, 5),
                  child: Text(goodsList[index]["people"]+"+人买过 ",style: TextStyle(fontSize: 12 , color: Color(0xff73615D)),),
                ),
              ],
            )
          ],
        ),
    ));
  }

  //  自营标签
  Widget Label(){
    return Container(
      height: 20,
      width: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(5), right: Radius.circular(5)),
          color: Color(0xffFB8539)),
      child: Center(
        child: Text("自营",style: TextStyle(fontSize: 12, color: Colors.white),),
      )
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

// 数据库的乱七八糟
//     MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('hh'),
//       ),
//       body: ListView.builder(
//           itemCount: nameList.length,
//           itemBuilder: (context, index) => students(index)
//       ),
//     ),
//   );
//   // ListView.builder(itemCount: nameList.length, itemBuilder: (context, index) => students(index),)
// }
//
// Widget students(int index) {
//   var info = nameList[index];
//   var stuSno = nameList[index]['Sno'];
//   var stuSname = nameList[index]['Sname'];
//   var stuSex = nameList[index]['Ssex'];
//   return Container(
//     child: Row(
//       children: <Widget>[
//         Text(info),
//         Text(stuSno),
//         Text(stuSname),
//         Text(stuSex),
//       ],
//     ),
//   );
// }
//
// Future Database() async {
//   var settings = new mysql.ConnectionSettings(
//       host: '192.168.31.68',
//       port: 3306,
//       user: 'root',
//       password: '12345678',
//       db: 'demo1');
//   var conn = await mysql.MySqlConnection.connect(settings);
//   var result = await conn
//       .query("select * from student");
//   await conn.close();
//   setState(() {
//     nameList = result.toList();
//   });
//   print(result);
// }
//
// @override
// void initState() {
//   super.initState();
//   Database();
// }
// }
