import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
          "Notifications",
          style: TextStyle(fontSize: 18, color: Color(0xFF7b4f44)),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Card(
          child: ListTile(
            title: Text("Dry Flower"),
            subtitle: Text("New varities are added."),
            leading: Icon(Icons.notification_important_outlined),
            onTap: (){

            },
            //trailing: Icon(Icons.star))
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Dry Flower"),
            subtitle: Text("New varities are added."),
            leading: Icon(Icons.notification_important_outlined),
            onTap: (){

            },
            //trailing: Icon(Icons.star))
          ),
        ),

      ],
      ),
    );
  }
}
