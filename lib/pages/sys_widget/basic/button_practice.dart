import 'package:flutter/material.dart';

///Text 组件 练习
class ButtonPracticePage extends StatelessWidget {
  const ButtonPracticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Button 使用"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Text("ElevatedButton"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Respond to button press
                    },
                    icon: Icon(Icons.add_to_home_screen, size: 18),
                    label: Text("ElevatedButton"),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    textStyle: const TextStyle(fontSize: 20)),
                child: Text("自定义"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Text("TextButton"),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.text_fields),
                    label: Text("Text Icon"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Text("OutlinedButton"),
                  ),
                  OutlinedButton.icon(
                    onPressed: () {
                      // Respond to button press
                    },
                    icon: Icon(Icons.add, size: 18),
                    label: Text("OutlinedButton"),
                  )
                ],
              ),
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () {},
              ),
              Text("--------过时组件-------"),
              RaisedButton(
                onPressed: () {},
                child: Text('RaisedButton 过时'),
              ),
              RaisedButton.icon(
                icon: Icon(Icons.send),
                label: Text("发送"),
                onPressed: () {},
              ),
              FlatButton(
                onPressed: () {},
                child: Text('RaisedButton 过时'),
              ),
              OutlineButton(
                onPressed: () {},
                child: Text('RaisedButton 过时'),
              ),
              Text("--------过时组件  自定义-------"),
              RaisedButton(
                color: Colors.blue,
                highlightColor: Colors.blue[400],
                ////按钮按下时的背景颜色
                textColor: Colors.white,
                //按钮文字颜色,
                // colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                child: Text("Submit"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
