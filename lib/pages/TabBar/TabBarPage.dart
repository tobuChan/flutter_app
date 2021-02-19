import 'package:flutter/material.dart';
import '../gyPage.dart';
import '../rsPage.dart';
import '../xwPage.dart';
import '../yqPage.dart';
import 'package:flutter_app/services/ScreenAdapter.dart';

class TabBarPage extends StatefulWidget {
  TabBarPage({Key key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  Widget tabBar() {
    return TabBar(
      //点击事件
      onTap: (int index) {},
      //选中字体样式
      labelStyle: TextStyle(fontSize: ScreenAdapter.setSp(36)),
      labelColor: Colors.white,
      //未选中字体样式
      unselectedLabelStyle: TextStyle(fontSize: ScreenAdapter.setSp(28)),
      unselectedLabelColor: Colors.grey,
      //允许左右滚动
      isScrollable: true,
      //选中下划线的颜色
      indicatorColor: Colors.white,
      //选中下划线的长度
      indicatorSize: TabBarIndicatorSize.label,
      //选中下划线的高度
      indicatorWeight: 2.0,
      tabs: [Text('疫情'), Text('新闻'), Text('热搜'), Text('关于')],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text('疫情助手'),
            bottom: tabBar(),
            primary: true,
            centerTitle: true,
            leading: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('add search....');
                }),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.history),
                  onPressed: () {
                    print('history....');
                  }),
            ],
          ),
          body: TabBarView(children: [
            YqPage(),
            XwPage(),
            RsPage(),
            GyPage(),
          ])),
    );
  }
}
