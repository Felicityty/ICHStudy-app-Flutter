import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart' as mysql;

class TouristPage extends StatefulWidget {
  const TouristPage({Key key}) : super(key: key);
  @override
  _TouristPageState createState() => _TouristPageState();
}

class _TouristPageState extends State<TouristPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('mysql-test'),
        ),
        body: ListView.builder(
          itemCount: stdList.length,
          itemBuilder: (context, index) => std(index),
        ),
      ),
    );
  }

  Widget std(int index) {
    var name=stdList[index]['Sname'].toString();
    var no=stdList[index]['Sno'];
    var sex=stdList[index]['Ssex'];
    return Row(
      children: <Widget>[
        Container(child: Text(no)),
        Container(child: Text('   ')),
        Container(child: Text(name)),
        Container(child: Text('   ')),
        Container(child: Text(sex))
      ],
    );
  }

  List stdList = new List();

  Future Database() async {
    var settings = new mysql.ConnectionSettings(
        host: '10.0.2.2',  // IP地址
        port: 3306,      // 端口
        user: 'root', 	// 更换用户名
        password: '12345678',		//更换密码
        db: 'demo1');
    var conn = await mysql.MySqlConnection.connect(settings);
    var result =
    await conn.query("select * from student");
    await conn.close();
    setState(() {
      stdList = result.toList();
    });
    print(stdList);
  }

  @override
  void initState() {
    super.initState();
    Database();
  }

}

