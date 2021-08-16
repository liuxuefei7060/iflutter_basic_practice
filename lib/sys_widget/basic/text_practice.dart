import 'package:flutter/material.dart';

///Text 组件 练习
class TextPracticePage extends StatelessWidget {
  const TextPracticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Text 使用"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              Text('Text用于显示简单样式文本，它包含一些控制文本显示样式的一些属性'),
              Text('Hello World'),
              Text(
                'Hello World' * 6,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                ' a 对齐方式 a ' * 8,
                textAlign: TextAlign.center,
                overflow: TextOverflow.visible,
                style: TextStyle(
                  height: 1.5,
                  decoration: TextDecoration.underline,
                  background: new Paint()..color = Colors.yellow,
                ),
              ),
              Text(
                "Hello world",
                textScaleFactor: 2,
              ),
              Text(
                "Hello world",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                    height: 1.5,
                    decoration: TextDecoration.underline,
                    background: new Paint()..color = Colors.yellow,
                    decorationStyle: TextDecorationStyle.dashed),
              ),
              Text.rich(TextSpan(
                  style: TextStyle(fontSize: 30, color: Colors.red),
                  children: [
                    TextSpan(text: "Hello "),
                    TextSpan(
                        text: "World",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                        )),
                    TextSpan(
                        text: " 胖虎！！Hello",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 30,
                        )),
                    TextSpan(
                        text: " StyleScript！！",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 30,
                          fontFamily: "StyleScript",
                        ))
                  ]))
            ],
          ),
        ));
  }
}
