import 'package:flutter/material.dart';

class ColumnPractice extends StatelessWidget {
  const ColumnPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column 使用'),
      ),
      body: Container(
        //在纵轴方向上占满屏幕
        width: double.infinity,
        color: Colors.grey,
        child: Column(
          children: [
            Container(
              width: 100,
              height: 50,
              color: Colors.blue,
              child: Text('aaaa'),
            ),
            Container(
              width: 60,
              height: 60,
              color: Colors.blue,
              child: Text('Column 模式居中对齐'),
            ),
            Text("data"),
            Expanded(
              child: Container(
                width: 60,
                height: 60,
                color: Colors.blue,
                child: Text('Expand'),
              ),
              flex: 1,
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                color: Colors.yellow[800],
                child: Column(
                  mainAxisSize: MainAxisSize.max, //无效，内层Colum高度为实际高度
                  children: <Widget>[
                    Text("hello world "),
                    Text("I am Jack "),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
