import 'package:flutter/material.dart';

class LayoutWidgetPage extends StatelessWidget {
  const LayoutWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("布局组件 Column, Row, Stack"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "ColumnPractice");
              },
              child: Text('Column  使用'),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "RowPractice");
              },
              child: Text('Row 使用'),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "StackPractice");
              },
              child: Text('Stack 使用'),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "WrapPractice");
              },
              child: Text('Wrap 使用'),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "AlignPractice");
              },
              child: Text('Align 使用'),
            ),
          ),
        ],
      ),
    );
  }
}
