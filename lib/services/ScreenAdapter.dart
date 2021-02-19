import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenAdapter {
  //设置高度
  static setHeight(double value) {
    return ScreenUtil().setHeight(value);
  }

  //设置宽度
  static setWidth(double value) {
    return ScreenUtil().setWidth(value);
  }

  //设置字体大小
  static setSp(double value) {
    return ScreenUtil().setSp(value);
  }

  //设置半径
  static setRadius(double value) {
    return ScreenUtil().radius(value);
  }

  //获取设备高度
  static getScreenHeight() {
    return ScreenUtil().screenHeight;
  }

  //获取设备宽度
  static getScreenWidth() {
    return ScreenUtil().screenWidth;
  }
}
