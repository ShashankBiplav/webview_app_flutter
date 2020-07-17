import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class WebviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Granveer'),
      ),
      body: WebView(
        initialUrl: "https://ganveer.com",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
