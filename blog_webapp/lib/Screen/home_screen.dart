import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://blog.codefactory.ai/');

/// url 타입

class HomeScreen extends StatelessWidget {
  /// final test = WebViewController().loadRequest();
  ///
  /// final controller = WebViewController();
  /// final result = controller.loadRequest();
  ///
  /// final test2 = WebViewController()..loadRequest();
  ///
  /// final controller2 = WebViewController();
  /// controller2.loadRequest();
  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeUrl);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('웹뷰.. 테스트입니다'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              controller.loadRequest(homeUrl);
            }, /// callBack 함수, 특정 기능이 실행되었을때 실행되는함수
            icon: Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
