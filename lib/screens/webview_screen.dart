import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class _WebviewScreenState extends State<WebviewScreen> {
  var _url;
  final _key = UniqueKey();
  _WebviewScreenState(this._url);
  num _stackToView = 1;

  void _handleLoad(String value) {
    setState(() {
      _stackToView = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: IndexedStack(
        index: _stackToView,
        children: [
          Column(
            children: <Widget>[
              Expanded(
                  child: WebView(
                key: _key,
                javascriptMode: JavascriptMode.unrestricted,
                initialUrl: _url,
                onPageFinished: _handleLoad,
              )),
            ],
          ),
          Container(
            color: Colors.white,
            child: Center(
              child: CircularProgressIndicator(
                backgroundColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class WebviewScreen extends StatefulWidget {
  final url;
  WebviewScreen(this.url);
  @override
  createState() => _WebviewScreenState(this.url);
}
