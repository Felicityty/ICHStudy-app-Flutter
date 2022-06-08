import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:math';
import 'package:flutter/services.dart';
import '../tabs/tabs.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String username = "";
  String userTip = "";
  String password ="";
  String passTip ="";
  bool isUser = false;
  bool isPass = false;

  String checkUser(String name) {
    // print(name);
    if(name == ""){
      userTip = "";
      // print(1);
    }else if(name.length <6 || name.length>12){
      userTip="请输入正确的账号";
      // print(2);
    }else {
      isUser = true;
      userTip = "";
      // print(3);
    }
    return userTip;
  }

  final pas ="[A-Z,a-z,0-9]";

  String checkPass(String word) {
    // print(RegExp(pas).hasMatch(word));
    if(word == ""){
      passTip = "";
      // print(1);
    }else if(word.length <8 || RegExp(pas).hasMatch(word)==false){
      passTip = "请输入正确的密码";
      // print(2);
    }else if(RegExp(pas).hasMatch(word)){
      isPass = true;
      passTip = "";
      // print(3);
    }
    return passTip;
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,   // 底部的Widget就会固定，不会跟随键盘弹起
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: _login(),
        appBar: AppBar(
          backgroundColor: Color(0xffdedede),
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
      ),
    );
  }

  Widget _login() {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/indexPic/login.png'),
                fit: BoxFit.fitWidth
            )
        ),
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                height: 44,
                child: TextField(
                  onChanged: (value){
                    setState(() {  // setState才会实时更改
                      username = value;
                    });
                    print(username);
                    print(isUser);
                  },
                  style: TextStyle(fontSize: 16, color: Color(0xff73615D)),
                  decoration: InputDecoration(
                    hintText: "请输入账号",
                    focusedBorder: UnderlineInputBorder(  // 选中时的颜色
                      borderSide: BorderSide(
                        color: Color(0xffD6CEBD),
                        width: 1.0,
                      )
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffD6CEBD),
                          width: 1.0,
                        )
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                height: 30,
                child: Text(checkUser(username),
                  style: TextStyle(fontSize: 12, color: Color(0xffFB8539)),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                height: 44,
                child: TextField(
                  onChanged: (value){
                    setState(() {
                      password = value;
                    });
                    print(isPass);
                  },
                  style: TextStyle(fontSize: 16, color: Color(0xff73615D)),
                  decoration: InputDecoration(
                    hintText: "请输入密码",
                    focusedBorder: UnderlineInputBorder(  // 选中时的颜色
                        borderSide: BorderSide(
                          color: Color(0xffD6CEBD),
                          width: 1.0,
                        )
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffD6CEBD),
                          width: 1.0,
                        )
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                height: 30,
                child: Text(checkPass(password),
                  style: TextStyle(fontSize: 12, color: Color(0xffFB8539)),
                ),
              ),
              SizedBox(height: 24),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff987744),
                  ),
                  child: Center(
                    child: Text('登录', style: TextStyle(fontSize: 18, color: Color(0xffFFFFFF))),
                  ),
                ),
                onTap: (){
                  if(isUser==true && isPass==true) {
                    Fluttertoast.showToast(msg: "登录成功",gravity: ToastGravity.CENTER,);
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Tabs()));
                  }else{
                    Fluttertoast.showToast(msg: "请输入正确的账号和密码",gravity: ToastGravity.CENTER,);
                  }
                },
              )

            ],
          )
        ],
      ),
    );
  }

}
