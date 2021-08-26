import 'package:flutter/material.dart';

class SysWidgetPage extends StatelessWidget {
  const SysWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("组件使用"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
              child: ListTile(
                leading: Icon(Icons.foundation),
                selected: true,
                title: Text("基础组件"),
                subtitle: Text('Text, Button, Image'),
                onTap: () {
                  Navigator.pushNamed(context, 'BasicWidgetPage');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
              child: ListTile(
                selected: true,
                leading: Icon(Icons.login),
                tileColor: Colors.grey[400],
                title: Text("布局组件"),
                onTap: () {
                  Navigator.pushNamed(context, 'LayoutWidgetPage');
                },
                subtitle: Text('Column, Row, Stack'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
