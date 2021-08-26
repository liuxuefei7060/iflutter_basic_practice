import 'package:flutter/material.dart';

class AlignPractice extends StatelessWidget {
  const AlignPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('Align 使用'),
      ),
      body: Column(children: [
        Container(
          color: Colors.red,
          child: Center(
            widthFactor: 2,
            child: Text('center组件 align'),
          ),
        )
      ]),
    );
  }
}
