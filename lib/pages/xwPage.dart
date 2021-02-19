import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Config/Config.dart';
import 'package:flutter_app/services/ScreenAdapter.dart';
import 'package:dio/dio.dart';
import 'modal/NewsData.dart';
import 'Config/Config.dart';
import 'NewsDetails.dart';

class XwPage extends StatefulWidget {
  XwPage({Key key}) : super(key: key);

  @override
  _XwPageState createState() => _XwPageState();
}

class _XwPageState extends State<XwPage> with AutomaticKeepAliveClientMixin {
  List _newsDataList = [];
  _getNewsData() async {
    var api = "${Config.xwUrl}";
    var result = await Dio().get(api);
    var focusList = NewsData.fromJson(result.data);
    if (!mounted) return;
    setState(() {
      this._newsDataList = focusList.newslist;
    });
    //print(this._newsDataList[0].title);
  }

  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      print('refresh');
      setState(() {
        _getNewsData();
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getNewsData();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        child: this._newsDataList.length > 0
            ? ListView.builder(
                itemCount: this._newsDataList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return NewsDetailsPage(
                          title: '${this._newsDataList[index].title}',
                          //this._newsDataList[index].url
                          url: '${this._newsDataList[index].url}',
                        );
                      }
                      )
                      );
                    },
                    child: Card(
                      elevation: 5.0,
                      margin: EdgeInsets.all(ScreenAdapter.setHeight(40)),
                      child: Container(
                        margin: EdgeInsets.all(ScreenAdapter.setHeight(20)),
                        height: ScreenAdapter.setHeight(800),
                        child: Column(
                          children: [
                            //图片
                            Container(
                              height: ScreenAdapter.setHeight(400),
                              child: AspectRatio(
                                aspectRatio: 16 / 9,
                                child: Image.network(
                                  this._newsDataList[index].picUrl != ''
                                      ? '${this._newsDataList[index].picUrl}'
                                      : 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3865588184,3342697262&fm=26&gp=0.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            //标题
                            Padding(
                              padding:
                                  EdgeInsets.all(ScreenAdapter.setHeight(20)),
                              child: Text(
                                '${this._newsDataList[index].title}',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: ScreenAdapter.setSp(48),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            //描述
                            Container(
                              height: ScreenAdapter.setHeight(200),
                              padding:
                                  EdgeInsets.all(ScreenAdapter.setHeight(20)),
                              child: Text(
                                '${this._newsDataList[index].description}',
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: ScreenAdapter.setSp(28)),
                              ),
                            ),
                            //时间
                            Container(
                              width: ScreenAdapter.getScreenWidth(),
                              padding:
                                  EdgeInsets.all(ScreenAdapter.setHeight(20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${this._newsDataList[index].ctime}',
                                    style: TextStyle(
                                        fontSize: ScreenAdapter.setSp(20)),
                                  ),
                                  Text(
                                    '来源：${this._newsDataList[index].source}',
                                    style: TextStyle(
                                        fontSize: ScreenAdapter.setSp(20)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            : Container(
                margin: EdgeInsets.all(ScreenAdapter.setHeight(20)),
                height: ScreenAdapter.setHeight(800),
              ),
        onRefresh: _onRefresh);
  }
}
