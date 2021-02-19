import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/modal/HotSearchData.dart';
import 'package:flutter_app/services/ScreenAdapter.dart';
import 'package:dio/dio.dart';
import 'Config/Config.dart';

class RsPage extends StatefulWidget {
  RsPage({Key key}) : super(key: key);

  @override
  _RsPageState createState() => _RsPageState();
}

class _RsPageState extends State<RsPage> with AutomaticKeepAliveClientMixin {
  List _hotSearchList = [];
  int colorIndex = 0;

  _getSearchData() async {
    var api = Config.rsUrl;
    print(api);
    var result = await Dio().get(api);
    var focusLit = HotSearchData.fromJson(result.data);
    setState(() {
      this._hotSearchList = focusLit.newslist;
    });
  }

  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      print('refresh');
      setState(() {
        _getSearchData();
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getSearchData();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        child: this._hotSearchList.length > 0
            ? ListView.builder(
                itemCount: this._hotSearchList.length,
                itemBuilder: (context, index) {
                  this.colorIndex = index;
                  return Container(
                    decoration: BoxDecoration(
                        border: Border.symmetric(
                            horizontal:
                                BorderSide(width: 0.3, color: Colors.grey))),
                    // margin: EdgeInsets.symmetric(
                    //     vertical: ScreenAdapter.setHeight(10),
                    //     horizontal: ScreenAdapter.setWidth(20)),
                    height: ScreenAdapter.setHeight(130),
                    child: Row(
                      children: [
                        Container(
                          width: ScreenAdapter.setWidth(80),
                          child: Text(
                            '${index + 1}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: ScreenAdapter.setSp(48),
                                color: this.colorIndex < 3
                                    ? Colors.orange
                                    : Colors.grey),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: ScreenAdapter.setHeight(10),
                              horizontal: ScreenAdapter.setWidth(20)),
                          child: Stack(
                            children: [
                              Container(
                                width: ScreenAdapter.getScreenWidth() -
                                    ScreenAdapter.setHeight(60) -
                                    ScreenAdapter.setWidth(40) -
                                    //留40出来适应不同手机
                                    ScreenAdapter.setWidth(40),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    '${this._hotSearchList[index].hotword}',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: ScreenAdapter.setSp(36),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.local_fire_department,
                                        size: ScreenAdapter.setRadius(30),
                                      ),
                                      Text(
                                        '${this._hotSearchList[index].hotwordnum}',
                                        style: TextStyle(
                                            fontSize: ScreenAdapter.setSp(20)),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                })
            : Container(height: ScreenAdapter.setHeight(180)),
        onRefresh: _onRefresh);
  }
}
