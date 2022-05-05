import 'package:flutter/material.dart';
import 'tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,  // 删除debug
        home: Tabs()
    );
  }
}