import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Config/Config.dart';
import 'package:flutter_app/pages/cityPage.dart';
import 'package:flutter_app/pages/modal/C19Data.dart';
import 'package:flutter_app/services/ScreenAdapter.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:dio/dio.dart';
//import 'modal/Covid19Data.dart';
import 'modal/C19Data.dart';
import 'package:date_format/date_format.dart';
import 'Config/Config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:city_pickers/city_pickers.dart';

class YqPage extends StatefulWidget {
  YqPage({Key key}) : super(key: key);

  @override
  _YqPageState createState() => _YqPageState();
}

class _YqPageState extends State<YqPage> with AutomaticKeepAliveClientMixin {
  //DateTime _today = DateTime.now();
  String _provinceName = '广东省';
  String _cityName = '深圳市';
  DateTime _today2;
  List _dataList = [];
  List images = [
    '${Config.domain}/NewsCat/images/swiper/swiper01.png',
    '${Config.domain}/NewsCat/images/swiper/swiper02.png',
    '${Config.domain}/NewsCat/images/swiper/swiper03.png'
  ];

  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      print('refresh');
      setState(() {
        _getData();
      });
    });
  }

  show() async {
    Result result = await CityPickers.showCityPicker(
      context: context,
    );
    if (result != null)
      setState(() {
        this._provinceName = result.provinceName;
        this._cityName = result.cityName;
      });
  }

  _getData() async {
    var api = "${Config.yqUrl2}";
    var result = await Dio().get(api);
    var focusList = C19Data.fromJson(result.data);

    setState(() {
      this._dataList = focusList.newslist;
      // this._dataList2 = this._dataList[0].globalStatistics;
      this._today2 = DateTime.fromMillisecondsSinceEpoch(
          this._dataList[0].desc.modifyTime);
    });

    //print(this._dataList[0].desc.modifyTime);
  }

  //swiper轮播图
  Widget _swiperPlayer() {
    return Container(
      // padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(ScreenAdapter.setHeight(20)),
      height: ScreenAdapter.setHeight(400),

      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            images[index],
            fit: BoxFit.fill,
          );
        },
        autoplay: true,
        itemCount: images.length,
        pagination: new SwiperPagination(builder: SwiperPagination.fraction),
        //control: new SwiperControl(),
      ),
    );
  }

  //新增wrap
  Widget _newAddData() {
    return this._dataList.length > 0
        ? Container(
            // margin: EdgeInsets.fromLTRB(
            //     ScreenAdapter.setWidth(20), 0, ScreenAdapter.setWidth(20), 0),
            height: ScreenAdapter.setHeight(230),
            child: Column(
              children: [
                Container(
                    width: ScreenAdapter.getScreenWidth(),
                    height: ScreenAdapter.setHeight(60),
                    //margin: EdgeInsets.only(right: ScreenAdapter.setWidth(450)),
                    child: Stack(
                      children: [
                        //我的城市
                        Align(
                            alignment: Alignment(-0.8, 0.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.place,
                                  size: ScreenAdapter.setRadius(30),
                                  color: Colors.green,
                                ),
                                InkWell(
                                  onTap: () {
                                    show();
                                  },
                                  child: Text(
                                    '${this._provinceName}-${this._cityName}',
                                    style: TextStyle(
                                        fontSize: ScreenAdapter.setRadius(28)),
                                  ),
                                )
                              ],
                            )),

                        //城市疫况
                        Align(
                          alignment: Alignment(0.9, 0),
                          child: InkWell(
                            child: Text(
                              '查看城市疫况',
                              style: TextStyle(
                                  fontSize: ScreenAdapter.setRadius(28)),
                            ),
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return CityPage(
                                  cityName:
                                      '${this._cityName.substring(0, this._cityName.length - 1)}',
                                  //this._newsDataList[index].url
                                  provinceName: this._provinceName.length > 4
                                      ? '${this._provinceName.substring(0, 2)}'
                                      : '${this._provinceName.substring(0, this._provinceName.length - 1)}',
                                );
                              }));
                            },
                          ),
                        ),
                      ],
                    )),
                Wrap(
                  //runSpacing: ScreenAdapter.setWidth(20),
                  spacing: ScreenAdapter.setWidth(20),
                  direction: Axis.horizontal,
                  children: [
                    Container(
                      height: ScreenAdapter.setHeight(160),
                      width: (ScreenAdapter.getScreenWidth() -
                              ScreenAdapter.setWidth(80)) /
                          3,
                      color: Colors.blue[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${this._dataList[0].desc.currentConfirmedIncr}',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(48),
                                color: Colors.red),
                          ),
                          SizedBox(
                            height: ScreenAdapter.setHeight(10),
                          ),
                          Text(
                            '新增确诊',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: ScreenAdapter.setHeight(160),
                      width: (ScreenAdapter.getScreenWidth() -
                              ScreenAdapter.setWidth(80)) /
                          3,
                      color: Colors.blue[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${this._dataList[0].desc.seriousIncr}',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(48),
                                color: Colors.red),
                          ),
                          SizedBox(
                            height: ScreenAdapter.setHeight(10),
                          ),
                          Text(
                            '新增无症状',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: ScreenAdapter.setHeight(160),
                      width: (ScreenAdapter.getScreenWidth() -
                              ScreenAdapter.setWidth(80)) /
                          3,
                      color: Colors.blue[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${this._dataList[0].desc.suspectedIncr}',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(48),
                                color: Colors.red),
                          ),
                          SizedBox(
                            height: ScreenAdapter.setHeight(10),
                          ),
                          Text(
                            '新增境外输入',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.black),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        : Container(
            margin: EdgeInsets.fromLTRB(
                ScreenAdapter.setWidth(20), 0, ScreenAdapter.setWidth(20), 0),
            height: ScreenAdapter.setHeight(230),
            child: Text('加载中...'),
          );
  }

  //累计wrap
  Widget _totalData() {
    //获取的时间戳转时间

    return this._dataList.length > 0
        ? Container(
            //margin: EdgeInsets.all(ScreenAdapter.setHeight(20)),
            height: ScreenAdapter.setHeight(410),
            child: Column(
              children: [
                Container(
                    width: ScreenAdapter.getScreenWidth(),
                    height: ScreenAdapter.setHeight(60),
                    // margin: EdgeInsets.only(right: ScreenAdapter.setWidth(200)),
                    child: Align(
                      alignment: Alignment(-0.80, 0),
                      child: Text(
                        '截至${formatDate(this._today2, [
                          yyyy,
                          '-',
                          mm,
                          '-',
                          dd,
                          '-',
                          hh,
                          ':',
                          nn
                        ])}',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(28),
                            color: Colors.deepOrange),
                      ),
                    )),
                Wrap(
                  runSpacing: ScreenAdapter.setWidth(20),
                  spacing: ScreenAdapter.setWidth(20),
                  direction: Axis.horizontal,
                  children: [
                    Container(
                      height: ScreenAdapter.setHeight(160),
                      width: (ScreenAdapter.getScreenWidth() -
                              ScreenAdapter.setWidth(80)) /
                          3,
                      color: Colors.orange[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${this._dataList[0].desc.currentConfirmedCount}',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(48),
                                color: Colors.orange),
                          ),
                          SizedBox(
                            height: ScreenAdapter.setHeight(10),
                          ),
                          Text(
                            '现有确诊',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: ScreenAdapter.setHeight(160),
                      width: (ScreenAdapter.getScreenWidth() -
                              ScreenAdapter.setWidth(80)) /
                          3,
                      color: Colors.red[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${this._dataList[0].desc.seriousCount}',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(48),
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: ScreenAdapter.setHeight(10),
                          ),
                          Text(
                            '累计无症状',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: ScreenAdapter.setHeight(160),
                      width: (ScreenAdapter.getScreenWidth() -
                              ScreenAdapter.setWidth(80)) /
                          3,
                      color: Colors.blue[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${this._dataList[0].desc.suspectedCount}',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(48),
                                color: Colors.lightBlue),
                          ),
                          SizedBox(
                            height: ScreenAdapter.setHeight(10),
                          ),
                          Text(
                            '累计境外输入',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: ScreenAdapter.setHeight(160),
                      width: (ScreenAdapter.getScreenWidth() -
                              ScreenAdapter.setWidth(80)) /
                          3,
                      color: Colors.red[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${this._dataList[0].desc.confirmedCount}',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(48),
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: ScreenAdapter.setHeight(10),
                          ),
                          Text(
                            '累计确诊',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: ScreenAdapter.setHeight(160),
                      width: (ScreenAdapter.getScreenWidth() -
                              ScreenAdapter.setWidth(80)) /
                          3,
                      color: Colors.green[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${this._dataList[0].desc.curedCount}',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(48),
                                color: Colors.lightGreen),
                          ),
                          SizedBox(
                            height: ScreenAdapter.setHeight(10),
                          ),
                          Text(
                            '累计治愈',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: ScreenAdapter.setHeight(160),
                      width: (ScreenAdapter.getScreenWidth() -
                              ScreenAdapter.setWidth(80)) /
                          3,
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${this._dataList[0].desc.deadCount}',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(48),
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: ScreenAdapter.setHeight(10),
                          ),
                          Text(
                            '累计死亡',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.black),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        : Container(
            margin: EdgeInsets.all(ScreenAdapter.setHeight(20)),
            height: ScreenAdapter.setHeight(400),
          );
  }

  Widget _grobalData() {
    //获取的时间戳转时间

    return this._dataList.length > 0
        ? Container(
            // margin: EdgeInsets.all(ScreenAdapter.setHeight(20)),
            height: ScreenAdapter.setHeight(450),
            child: Column(
              children: [
                Container(
                    width: ScreenAdapter.getScreenWidth(),
                    height: ScreenAdapter.setHeight(60),
                    // margin: EdgeInsets.only(right: ScreenAdapter.setWidth(400)),
                    child: Align(
                      alignment: Alignment(-0.85, 0),
                      child: Text(
                        '全球数据：',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(28),
                            color: Colors.deepOrange),
                      ),
                    )),
                Wrap(
                  runSpacing: ScreenAdapter.setWidth(20),
                  spacing: ScreenAdapter.setWidth(20),
                  direction: Axis.horizontal,
                  children: [
                    Container(
                      height: ScreenAdapter.setHeight(160),
                      width: (ScreenAdapter.getScreenWidth() -
                              ScreenAdapter.setWidth(80)) /
                          3,
                      color: Colors.orange[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${this._dataList[0].desc.globalStatistics.currentConfirmedCount}',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.orange),
                          ),
                          SizedBox(
                            height: ScreenAdapter.setHeight(10),
                          ),
                          Text(
                            '现有确诊',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: ScreenAdapter.setHeight(160),
                      width: (ScreenAdapter.getScreenWidth() -
                              ScreenAdapter.setWidth(80)) /
                          3,
                      color: Colors.red[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${this._dataList[0].desc.globalStatistics.currentConfirmedIncr}',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: ScreenAdapter.setHeight(10),
                          ),
                          Text(
                            '新增确诊',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: ScreenAdapter.setHeight(160),
                      width: (ScreenAdapter.getScreenWidth() -
                              ScreenAdapter.setWidth(80)) /
                          3,
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${this._dataList[0].desc.globalStatistics.deadIncr}',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: ScreenAdapter.setHeight(10),
                          ),
                          Text(
                            '新增死亡',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: ScreenAdapter.setHeight(160),
                      width: (ScreenAdapter.getScreenWidth() -
                              ScreenAdapter.setWidth(80)) /
                          3,
                      color: Colors.red[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${this._dataList[0].desc.globalStatistics.confirmedCount}',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: ScreenAdapter.setHeight(10),
                          ),
                          Text(
                            '累计确诊',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: ScreenAdapter.setHeight(160),
                      width: (ScreenAdapter.getScreenWidth() -
                              ScreenAdapter.setWidth(80)) /
                          3,
                      color: Colors.green[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${this._dataList[0].desc.globalStatistics.curedCount}',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.lightGreen),
                          ),
                          SizedBox(
                            height: ScreenAdapter.setHeight(10),
                          ),
                          Text(
                            '累计治愈',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: ScreenAdapter.setHeight(160),
                      width: (ScreenAdapter.getScreenWidth() -
                              ScreenAdapter.setWidth(80)) /
                          3,
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${this._dataList[0].desc.globalStatistics.deadCount}',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: ScreenAdapter.setHeight(10),
                          ),
                          Text(
                            '累计死亡',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(28),
                                color: Colors.black),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        : Container(
            margin: EdgeInsets.all(ScreenAdapter.setHeight(20)),
            height: ScreenAdapter.setHeight(400),
          );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: ListView(
        children: [
          _swiperPlayer(),
          _newAddData(),
          _totalData(),
          _grobalData(),
        ],
      ),
    );
  }
}
