import 'package:flutter/material.dart';
import 'tabs.dart';
import '../VR/VRIndex.dart';
import '../products/productsList.dart';
import '../index/index.dart';
import '../index/login.dart';
import '../about/aboutIndex.dart';
import '../products/goods.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      // GoodsPage();
      // AboutPage();
      // AboutPlaPage();
      // LoginPage();
      IndexPage();
      // ProductPage();
      // MaterialApp(
      //   debugShowCheckedModeBanner: false,  // 删除debug
      //   home:
      // );
  }
}
