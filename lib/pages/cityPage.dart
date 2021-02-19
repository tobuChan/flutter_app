import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import '../pages/widgets/LoadingWidget.dart';

class CityPage extends StatefulWidget {
  CityPage({Key key, this.cityName, this.provinceName}) : super(key: key);
  final String cityName;
  final String provinceName;

  @override
  _CityPageState createState() =>
      _CityPageState(this.cityName, this.provinceName);
}

class _CityPageState extends State<CityPage>
    with AutomaticKeepAliveClientMixin {
  // var _flutterWebviewPlugin =
  //     FlutterWebviewPlugin().onUrlChanged.listen((String url) async {
  //   print("navigating to...$url");
  //   if (url.startsWith("baiduboxapp")) {
  //     await FlutterWebviewPlugin().stopLoading();
  //     await FlutterWebviewPlugin().goBack();
  //     print("couldn't launch $url");
  //   }
  // });
  String cityName;
  String provinceName;
  _CityPageState(this.cityName, this.provinceName);

  final Set<JavascriptChannel> jsChannels = [
    JavascriptChannel(
        name: 'Print',
        onMessageReceived: (JavascriptMessage message) {
          print(message.message);
        }),
  ].toSet();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('${provinceName}${cityName}');
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
        invalidUrlRegex: '^baiduboxapp:|market:|sinanews:',
        javascriptChannels: jsChannels,
        mediaPlaybackRequiresUserGesture: false,
        url:
            'https://voice.baidu.com/act/newpneumonia/newpneumonia/?from=osari_aladin_banner&city=${provinceName}-${cityName}',
        appBar: new AppBar(
          title: Text('${this.provinceName}-${this.cityName}疫况'),
        ),
        withZoom: true,
        withLocalStorage: true,
        hidden: true,
        initialChild: LoadingWidget());
  }
}
