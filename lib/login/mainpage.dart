import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key}) : super(key: key);

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController webViewController;

  @override
  void initState() {
    super.initState();

    // Initialize the controller
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(NavigationDelegate(
        onNavigationRequest: (request) {
          if (request.url == "https://ismahin.github.io/argiculture/") {
            return NavigationDecision.prevent;
          } else {
            return NavigationDecision.navigate;
          }
        },
      ))
      ..loadRequest(
          Uri.parse("https://ismahin.github.io/argiculture/")); // Initial URL
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebViewWidget(controller: webViewController),
      ),
    );
  }
}
