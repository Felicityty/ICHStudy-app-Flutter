import 'package:flutter/material.dart';
import '../Components/stars.dart';

class StarPage extends StatefulWidget {
  StarPage({Key key}) : super(key: key);
  _StarPageState createState()=> _StarPageState();
}
class _StarPageState extends State<StarPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffF9F3EB),
            elevation: 0,
            title: Text("评价" ,style: TextStyle(color: Color(0xff382321)),),
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
          body: ReviewsDemo(),
          backgroundColor: Color(0xffF9F3EB)
      ),
    );
  }
}