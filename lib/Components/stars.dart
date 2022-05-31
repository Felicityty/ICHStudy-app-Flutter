import 'package:flutter/material.dart';
import 'package:reviews_slider/reviews_slider.dart';

// 进度条控制器

class ReviewsDemo extends StatefulWidget {
  @override
  _ReviewsDemoState createState() => _ReviewsDemoState();
}

class _ReviewsDemoState extends State<ReviewsDemo> {
  int selectedValue1;
  int selectedValue2;

  void onChange1(int value) {
    setState(() {
      selectedValue1 = value;
    });
  }

  void onChange2(int value) {
    setState(() {
      selectedValue2 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F3EB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,0,20,0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Q1.  您对商品的款式满意吗？',
                style: TextStyle(color: Color(0xff382321),
                    fontSize: 18),
              ),
              SizedBox(height: 20),
              ReviewSlider(
                optionStyle: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
                onChange: onChange1,
              ),
              SizedBox(height: 40),
              Text(
                'Q2. 您对质量的款式满意吗？',
                style: TextStyle(color: Color(0xff382321), fontSize: 18),
              ),
              SizedBox(height: 20),
              ReviewSlider(
                optionStyle: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
                onChange: onChange2,
                initialValue: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}