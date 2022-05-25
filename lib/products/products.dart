import 'package:flutter/material.dart';
// import 'package:mysql1/mysql1.dart' as mysql;

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);
  @override
  _ProductPageState createState()=> _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List nameList = new List();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('我是文创产品');
  }
}
  //
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