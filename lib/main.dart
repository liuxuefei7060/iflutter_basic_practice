import 'package:flutter/material.dart';
import 'package:iflutter_basic_practice/pages/sys_widget/basic/basic_widget_page.dart';
import 'package:iflutter_basic_practice/pages/sys_widget/basic/button_practice.dart';
import 'package:iflutter_basic_practice/pages/sys_widget/basic/image_practice.dart';
import 'package:iflutter_basic_practice/pages/sys_widget/basic/text_practice.dart';
import 'package:iflutter_basic_practice/pages/sys_widget/layout/column_practice.dart';
import 'package:iflutter_basic_practice/pages/sys_widget/layout/layout_widget_page.dart';
import 'package:iflutter_basic_practice/pages/sys_widget/layout/row_practice.dart';
import 'package:iflutter_basic_practice/pages/sys_widget/layout/stack_practice.dart';
import 'package:iflutter_basic_practice/pages/sys_widget/layout/warp_practice.dart';
import 'package:iflutter_basic_practice/pages/sys_widget/system_widget_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        'BasicWidgetPage': (context) => BasicWidgetPage(),
        'LayoutWidgetPage': (context) => LayoutWidgetPage(),
        'ColumnPractice': (context) => ColumnPractice(),
        'RowPractice': (context) => RowPractice(),
        'StackPractice': (context) => StackPractice(),
        'WrapPractice': (context) => WrapPractice(),
        'TextPracticePage': (context) => TextPracticePage(),
        'ButtonPracticePage': (context) => ButtonPracticePage(),
        'ImagePracticePage': (context) => ImagePracticePage()
      },
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selected,
          onTap: (int index) {
            setState(() {
              _selected = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "组件"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: "暂无")
          ],
        ),
        body:
            SysWidgetPage() // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
