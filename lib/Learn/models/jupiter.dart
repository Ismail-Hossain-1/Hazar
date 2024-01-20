import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Learn/models/sun.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Jupiter extends StatefulWidget {
  const Jupiter({super.key});

  @override
  State<Jupiter> createState() => _JupiterState();
}

class _JupiterState extends State<Jupiter> {
  WebViewController controller=WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.google.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://en.wikipedia.org/wiki/Jupiter'));


  @override
  Scaffold build(BuildContext context) {
    return Scaffold (

    //  appBar: Sun.appBar,
      body: SafeArea(
          child: WebViewWidget(controller: controller,)
      ),
    );
  }
}
