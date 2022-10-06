import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class PrivacyPage extends StatefulWidget {
  const PrivacyPage({Key? key}) : super(key: key);

  @override
  State<PrivacyPage> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
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
         "Privacy Policy",
         style: TextStyle(fontSize: 18, color: Color(0xFF7b4f44)),
       ),
     ),
    body: const WebView(
    initialUrl: 'https://www.app-privacy-policy.com/live.php?token=1UPuGHHPmxtI7Af5NojxBV0Aq0NIQ7pH',
    ),
   );
  }
}
