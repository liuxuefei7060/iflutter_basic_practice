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
              Text(
                  'Flutter中，我们可以通过Image组件来加载并显示图片，Image的数据源可以是asset、文件、内存以及网络。'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.accessible,
                    color: Colors.green,
                    size: 50,
                  ),
                  Icon(
                    Icons.error,
                    color: Colors.green,
                    size: 50,
                  ),
                  Icon(
                    Icons.fingerprint,
                    color: Colors.green,
                    size: 50,
                  ),
                ],
              ),
              Text('---------本地图片------------'),
              Image.asset(
                'assets/images/img_ceshi1.png',
                width: 100.0,
                height: 300.0,
              ),
              Image.asset('assets/images/img_ceshi_big.jpg',
                  width: 100, height: 200, fit: BoxFit.fill),
              Text('---------网络图片------------'),
              Image(
                image: NetworkImage(
                    "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
                height: 100.0,
              ),
              Image.network(
                'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
                width: 100,
                height: 100,
              ),
              Text('---------Image Fit 模式------------'),
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    color: Colors.grey,
                    child: Image.network(
                      'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text('Fit.fll')
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    color: Colors.grey,
                    child: Image.network(
                      'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text('Fit.contain')
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    color: Colors.grey,
                    child: Image.network(
                      'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Fit.cover')
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    color: Colors.grey,
                    child: Image.network(
                      'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Text('Fit.fitWidth')
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    color: Colors.grey,
                    child: Image.network(
                      'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Text('Fit.fitHeight')
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    color: Colors.grey,
                    child: Image.network(
                      'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
                      fit: BoxFit.none,
                    ),
                  ),
                  Text('Fit.none')
                ],
              )
            ],
          ),
        ));
  }
}
