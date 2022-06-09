// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'dart:io';
// import 'package:dio/dio.dart';
//
//
// class TestPage extends StatefulWidget {
//   const TestPage({Key key}) : super(key: key);
//   @override
//   _TestPageState createState() => _TestPageState();
// }
//
// class _TestPageState extends State<TestPage> {
//   String result = "";
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("oo"),
//         ),
//         body: _contest(),
//       ),
//     );
//   }
//   Widget _contest (){
//     return Container(
//       child: GestureDetector(
//         child: Container(
//           width: 50,
//           height: 50,
//           color: Colors.deepOrange,
//         ),
//         onTap: (){
//           dioGetData();
//         },
//       ),
//     );
//   }
//
//   dioGetData() {
//     print(1111);
//     final response = Dio().get("http://10.0.2.2/conn.php");
//     response.then((value) {
//       print(value.statusCode);
//       print(value.data);
//     });
//   }
//
//   // void getFun() async {
//   //   Dio dio = new Dio();
//   //   String url = "http://10.0.0.12/conn.php";
//   //   Response response = await dio.get(url);
//   //   var data = response.data;
//   // }
//
//
//
// }
//

import 'dart:convert';
import 'package:flutter/material.dart';
// 引入网络请求插件
import 'package:dio/dio.dart';

class HttpPage extends StatefulWidget {
  HttpPage({Key key}) : super(key: key);
  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {

  List _list = [];

  @override
  void initState() {
    super.initState();
    this._getData();
  }
  // 获取数据
  void _getData() async{
    var url = "http://172.18.53.37/test/conn.php";
    Response result = await Dio().get(url);
    setState(() {
      this._list = json.decode(result.data)["data"];
      print(this._list);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar:AppBar(
            title: Text("HTTP请求"),
          ),


          // 渲染数据(第一种方式)
          // body:this._list.length==0?Center(child:Text("加载中")):ListView(
          //     children:this._list.map((obj){
          //         return ListTile(
          //             title: Text(obj["title"]),
          //         );
          //     }).toList()
          // )

          // 渲染数据(第二种方式)
          body:this._list.length==0?Center(child: Text("加载中")):ListView.builder(
              itemCount:this._list.length,
              itemBuilder:(context,index){
                return ListTile(
                    title:Text("${this._list[index]['name']}")
                );
              }
          )

      ),
    );
  }
}
