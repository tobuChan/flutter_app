import 'dart:ui';
import 'Config/Config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/services/ScreenAdapter.dart';

class GyPage extends StatefulWidget {
  GyPage({Key key}) : super(key: key);

  @override
  _GyPageState createState() => _GyPageState();
}

class _GyPageState extends State<GyPage> {
  Widget _padding(text) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: ScreenAdapter.setHeight(10),
          horizontal: ScreenAdapter.setWidth(20)),
      child: Text(
        text,
        style:
            TextStyle(fontSize: ScreenAdapter.setSp(36), color: Colors.white),
      ),
    );
  }

  List _textList = [
    '作者：陈怀博Tobu',
    '联系：tobuChan@foxmail.com',
    '版本：1.0',
    '说明：仅供参考，暂不商用',
    '数据支持：BlankerL、天行Api数据',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: ScreenAdapter.setHeight(20)),
              //  '${Config.domain}/NewsCat/images/avatar/avatar.jpg',
              //margin: EdgeInsets.fromLTRB(100, 20, 0, 40),
              height: ScreenAdapter.setRadius(400),
              width: ScreenAdapter.setRadius(400),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  border: Border.all(width: 1, color: Colors.white),
                  image: DecorationImage(
                      image: NetworkImage(
                          '${Config.domain}/NewsCat/images/avatar/avatar.jpg'))),
            ),
          ),
          SizedBox(
            height: ScreenAdapter.setHeight(100),
          ),
          _padding(this._textList[0]),
          _padding(this._textList[1]),
          _padding(this._textList[2]),
          _padding(this._textList[3]),
          _padding(this._textList[4]),
        ],
      ),
    );
  }
}
