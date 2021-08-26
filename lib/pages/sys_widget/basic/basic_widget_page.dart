import 'package:flutter/material.dart';

class BasicWidgetPage extends StatelessWidget {
  const BasicWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础组件 Text Image Button"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "TextPracticePage");
              },
              child: Text('Text'),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "ButtonPracticePage");
              },
              child: Text('Button'),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "ImagePracticePage");
              },
              child: Text('Image'),
            ),
          ),
        ],
      ),
    );
  }
}
