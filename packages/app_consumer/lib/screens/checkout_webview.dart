import 'dart:async';
import 'package:flutter/material.dart';
import 'package:uni_links/uni_links.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CheckoutWebView extends StatefulWidget {
  final String url; const CheckoutWebView({super.key, required this.url});
  @override State<CheckoutWebView> createState() => _CheckoutWebViewState();
}

class _CheckoutWebViewState extends State<CheckoutWebView> {
  StreamSubscription? _sub; bool _done = false;
  @override void initState(){
    super.initState();
    _sub = uriLinkStream.listen((uri){
      if(uri==null) return; if(_done) return;
      if(uri.host=='checkout' && (uri.path.contains('success')||uri.path.contains('cancel'))){
        _done=true; if(mounted) Navigator.of(context).pop(uri.path.contains('success'));
      }
    });
  }
  @override void dispose(){ _sub?.cancel(); super.dispose(); }
  @override Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: const Text('Checkout')), body: WebView(initialUrl: widget.url, javascriptMode: JavascriptMode.unrestricted));
  }
}
