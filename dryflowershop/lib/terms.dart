import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermsPage extends StatefulWidget {
  const TermsPage({Key? key}) : super(key: key);

  @override
  State<TermsPage> createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFf8eee1),
        centerTitle: true,
        // for putting the text in centre
        elevation: 0,
        // for removing the shadow
        title: Text(
          "Terms & Conditions",
          style: TextStyle(fontSize: 18, color: Color(0xFF7b4f44)),
        ),
      ),
      body: const WebView(
        initialUrl: 'https://www.app-privacy-policy.com/live.php?token=0Q7lGGRxgY9P90ulxAuzOa5WhpgBuLH6',
      ),
    );
  }
}
