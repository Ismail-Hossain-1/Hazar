

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Sun extends StatelessWidget {

     Sun({Key? key}) : super(key: key);
    static var statusBar=const SystemUiOverlayStyle(
       statusBarColor: Colors.transparent,
       statusBarBrightness: Brightness.light,
     );


      static var appBar=AppBar(
        leading: const Icon(Icons.account_circle_rounded),
        title: const Text("3D view",style: TextStyle(color: Colors.white),),
        centerTitle: false,
        backgroundColor: Colors.black26,


        elevation: 2,

      );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(statusBar);

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home:  SunPage(),

      title: "3D View",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );;
  }
}


class SunPage extends StatefulWidget {
  const SunPage({super.key});

  @override
  State<SunPage> createState() => _SunPageState();
}

class _SunPageState extends State<SunPage> {


  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onUrlChange: (url) {

        },
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://google.com/')) {
            return NavigationDecision.prevent;
          }
          else if (request.url.startsWith('https://m.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          else
            return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://en.wikipedia.org/wiki/Sun'));

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(

      appBar: Sun.appBar,
      body: WebViewWidget(controller: controller,),

    );
  }
}
