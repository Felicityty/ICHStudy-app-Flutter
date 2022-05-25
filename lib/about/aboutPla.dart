import 'package:flutter/material.dart';

class AboutPlaPage extends StatefulWidget {
  AboutPlaPage({Key key}) : super(key: key);
  _AboutPlaPageState createState()=> _AboutPlaPageState();
}
class _AboutPlaPageState extends State<AboutPlaPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("平台介绍",style: TextStyle(color: Color(0xff382321)),),
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
          body: _aboutP(),
          backgroundColor: Color(0xffF9F3EB)
      ),
    );
  }
}
class _aboutP extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              height: 80,
              width: 120,
              child: Image.asset("assets/about/logo.png"),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Center(
            child: Text("非遗研学",style: TextStyle(color: Color(0xff382321),fontSize: 24),),
          ),
          SizedBox(
            height: 2,
          ),
          Center(
            child: Text("中国非遗文旅一体化平台",style: TextStyle(color: Color(0xff382321),fontSize: 14),),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text("        守护文化根脉，托起民族未来，本平台是一个致力于中国非物质文化遗产保护和传承的微信小程序，平台已与20位非遗传承人合作开发非遗项目，并已经与20个非遗研学基地建立合作关系，完成非遗数字化项目60余个，通过打造原汁原味数字化非遗研学产品、定制个性化研学路线，带动乡村振兴，并发展非遗研学新业态。",style: TextStyle(color: Color(0xff382321),fontSize: 14),),
          )
        ],
      ),
    );
  }
}