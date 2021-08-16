import 'package:flutter/material.dart';

///Text 组件 练习
class ImagePracticePage extends StatelessWidget {
  const ImagePracticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Image 使用"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              Text('Text用于显示简单样式文本，它包含一些控制文本显示样式的一些属性'),
              Text('Hello World'),
            ],
          ),
        ));
  }
}
