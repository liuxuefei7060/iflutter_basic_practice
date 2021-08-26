import 'package:flutter/material.dart';

class WrapPractice extends StatelessWidget {
  const WrapPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Wrap 使用'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Wrap(
          spacing: 10,
          children: [
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('A')),
              label: new Text('Hamilton'),
            ),
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('M')),
              label: new Text('Lafayette'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('按钮'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('按钮'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('按钮'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('按钮'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('按钮'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('按钮'),
            )
          ],
        ),
      ),
    );
  }
}
