import 'package:flutter/material.dart';
//import 'package:webview_flutter/webview_flutter.dart';
//import 'dart:io';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import '../pages/widgets/LoadingWidget.dart';

class NewsDetailsPage extends StatefulWidget {
  NewsDetailsPage({Key key, this.title, this.url}) : super(key: key);
  final String title;
  final String url;

  @override
  _NewsDetailsPageState createState() =>
      _NewsDetailsPageState(this.title, this.url);
}

class _NewsDetailsPageState extends State<NewsDetailsPage> {
  final Set<JavascriptChannel> jsChannels = [
    JavascriptChannel(
        name: 'Print',
        onMessageReceived: (JavascriptMessage message) {
          print(message.message);
        }),
  ].toSet();
  String title;
  String url;

  _NewsDetailsPageState(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    print(this.url);
    return WebviewScaffold(
        javascriptChannels: jsChannels,
        mediaPlaybackRequiresUserGesture: false,
        url: '${this.url}',
        appBar: new AppBar(
          title: Text('${this.title}'),
        ),
        withZoom: true,
        withLocalStorage: true,
        hidden: true,
        invalidUrlRegex: '^77770.club',
        initialChild: LoadingWidget());
  }
}
