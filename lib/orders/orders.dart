import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  OrdersPage({Key key}) : super(key: key);
  _OrdersPageState createState()=> _OrdersPageState();
}
class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      // debugShowCheckedModeBanner: false,
      child: Scaffold(
          appBar: AppBar(
            title: Text("我的订单",style: TextStyle(color: Color(0xff382321)),),
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
            bottom: _tabbar(),
          ),
          body: _ordersContent(),
          backgroundColor: Color(0xffF9F3EB)
      ),
    );
  }

  Widget _tabbar() {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Color(0xff7A5A32),
        // 选中标签的颜色
        labelColor: Color(0xff382321),
        // 未选中标签的颜色
        unselectedLabelColor: Color(0xff73615D),
        // 标签
      tabs: <Widget>[
        Tab(text:"全部"),
        Tab(text:"待发货"),
        Tab(text:"待收货"),
        Tab(text:"待评价"),
      ],

    );
  }

  Widget _ordersContent() {
    return TabBarView(
      children: <Widget>[
        Container(
          child: Text("热门内容"),
        ),
        Container(
          child: Text("热门内容"),
        ),
        Container(
          child: Text("热门内容"),
        ),
        Container(
          child: Text("热门内容"),
        ),
      ],
    );
  }

}