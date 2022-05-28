import 'package:flutter/material.dart';
import './addsModify.dart';

class AddressPage extends StatefulWidget {
  // String vrid;
  // AddressPage(this.vrid);
  AddressPage({Key key}) : super(key: key);
  _AddressPageState createState()=> _AddressPageState();
}
class _AddressPageState extends State<AddressPage> {

  List info = [
    {
      "name": "fffffff",
      "phone": "19812345678",
      "address": "浙江省 杭州市 西湖区 留下街道 留和路318号浙江科技学院西和公寓8#"
    }
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("我的地址",style: TextStyle(color: Color(0xff382321)),),
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
          body: _addressContent(),
          backgroundColor: Color(0xffF9F3EB)
      ),
    );
  }

  Widget _addressContent() {
    // info[0]["name"] = widget.vrid;
    return Container(
      margin: EdgeInsets.fromLTRB(24, 20, 24, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
          color: Color(0xffFFFBF8)
      ),
      height: 250,
      width: 380,
      child: Column(
        children: <Widget>[
          SizedBox(height: 5,),
          Container(
            // color: Colors.amberAccent,
            height: 120,
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
                        Text(info[0]["phone"],style: TextStyle(color:Color(0xff73615D), fontSize: 16,)),
                        SizedBox(width: 15,),
                        Container(
                          width: 40,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
                            border: Border.all(width: 2, color: Color(0xffFB8539)),),
                          child: Center(
                            child: Text("默认",style: TextStyle(color:Color(0xffFB8539),fontWeight: FontWeight.w600)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      // color: Colors.deepOrangeAccent,
                      width: 260,
                      height: 50,
                      child: Text(info[0]["address"],style: TextStyle(color:Color(0xff382321), fontSize: 16,)),
                    )
                  ],
                ),
                SizedBox(width: 15,),
                GestureDetector(
                  child: Container(
                    height: 28,
                    width: 28,
                    child: Image.asset("assets/icons/rewrite.png"),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddsmodifyPage()));
                  },
                )
              ],
            ),
          ),
          Container(
            // color: Colors.amberAccent,
            height: 120,
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
                        Text("ttttttt",style: TextStyle(color:Color(0xff382321), fontSize: 20, fontWeight: FontWeight.w600)),
                        SizedBox(width: 20,),
                        Text("137xxxxxx",style: TextStyle(color:Color(0xff73615D), fontSize: 16,)),
                        SizedBox(width: 15,),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      // color: Colors.deepOrangeAccent,
                      width: 260,
                      height: 50,
                      child: Text("浙江省 杭州市 西湖区 留下街道 留和路318号浙江科技学院东和公寓4#",style: TextStyle(color:Color(0xff382321), fontSize: 16,)),
                    )
                  ],
                ),
                SizedBox(width: 15,),
                Container(
                  height: 28,
                  width: 28,
                  child: Image.asset("assets/icons/rewrite.png"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}