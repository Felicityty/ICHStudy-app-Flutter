import 'package:flutter/material.dart';
import './vrDetail.dart';
import '../Components/search.dart';
import 'dart:convert';
import 'package:dio/dio.dart';

class VRIndexPage extends StatefulWidget {
  VRIndexPage({Key key}) : super(key: key);
  _VRIndexPageState createState() => _VRIndexPageState();
}

class _VRIndexPageState extends State<VRIndexPage> {

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

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF9F3EB),
          // elevation: 0,  Appbar
          title: Text(
            'VR',
            style: TextStyle(
              color: Color(0xff7A5A32),
            ),
          ),
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
        body: VRContent(),
        backgroundColor: Color(0xffF9F3EB),
      ),
    );
  }

  Widget VRContent() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        searchWidget(),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: _list.length,
              itemBuilder: _vrs),
        )
      ],
    );
  }

  Widget _vrs(BuildContext context, int index) {
    return GestureDetector(
      child: Container(
          padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                // 圆角
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  _list[index]["picUrl"],
                  width: 425,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Text(_list[index]["name"], style: TextStyle(color: Color(0xff382321)),),
              )
            ],
          )),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => VRPage(_list[index]["id"].toString())));
      },
    );
  }
}

// class VRContent extends StatelessWidget {
//   List<Map> vrsList = [
//     {"id":0, "name": "舟山博物馆", "picUrl": "assets/vrPic/zs.png"},
//     {"id":1,  "name": "十里红妆博物馆", "picUrl": "assets/vrPic/slhz.png"},
//     {"id":2, "name": "定海古城", "picUrl": "assets/vrPic/dhgc.png"},
//     {"id":3, "name": "龙珠", "picUrl": "assets/vrPic/lz.png"},
//     {"id":4, "name": "金沙", "picUrl": "assets/vrPic/js.png"},
//     {"id":5, "name": "沙村", "picUrl": "assets/vrPic/sc.png"},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Column(
//       children: <Widget>[
//         SizedBox(
//           height: 10,
//         ),
//         searchWidget(),
//         Expanded(
//           child: ListView.builder(
//               shrinkWrap: true,
//               itemCount: vrsList.length,
//               itemBuilder: _vrs),
//         )
//       ],
//     );
//   }
//
//   Widget _vrs(BuildContext context, int index) {
//     return GestureDetector(
//       child: Container(
//           padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               ClipRRect(
//                 // 圆角
//                 borderRadius: BorderRadius.circular(10),
//                 child: Image.asset(
//                   vrsList[index]["picUrl"],
//                   width: 425,
//                   height: 200,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                 child: Text(vrsList[index]["name"], style: TextStyle(color: Color(0xff382321)),),
//               )
//             ],
//           )),
//       onTap: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => VRPage(vrsList[index]["id"].toString())));
//       },
//     );
//   }
// }
