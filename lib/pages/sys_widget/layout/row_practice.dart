import 'package:flutter/material.dart';

class RowPractice extends StatelessWidget {
  const RowPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row 使用'),
      ),
      body: Column(
        //测试Row对齐方式，排除Column默认居中对齐的干扰
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text(" hello world ", style: TextStyle(fontSize: 30.0),),
              Text(" I am Jack "),
            ],
          ),
        ],
      ),
    );
  }
}
