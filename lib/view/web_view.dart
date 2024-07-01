import 'package:flutter/material.dart';
import 'package:maharaj_ohare/view/webViewStack.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'navigation_controls.dart';


class WebView extends StatefulWidget {
  const WebView({super.key, required this.url});

  final String url;
  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {



  @override
  Widget build(BuildContext context) {
    final WebViewController controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse(widget.url),
      );


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.1),
        title: const Text("Maharaj Ohare",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,),),
        actions: [
          NavigationControls(controller: controller),
        ],
      ),
      body: WebViewStack(controller: controller,),
    );
  }
}