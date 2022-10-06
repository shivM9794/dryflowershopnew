import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFf8eee1),
        centerTitle: true,
        // for putting the text in centre
        elevation: 0,
        // for removing the shadow
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 18, color: Color(0xFF7b4f44)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: <Widget>[
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
                  ),
                  Text("Accept Orders",style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF7b4f44)
                  ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 5),
              child: LiteRollingSwitch(
                value: true,
                textOn: 'Yes',
                textOff: 'No',
                colorOn: Color(0xFF7b4f44),
                colorOff: Color(0xFFf8eee1),
                iconOn: Icons.check,
                iconOff: Icons.power_settings_new,
                animationDuration: Duration(milliseconds: 800),
                onChanged: (bool state) {
                  print('turned ${(state) ? 'yes' : 'no'}');
                },
              ),
            ),

            SizedBox(
              height: 60,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
                  ),
                  Text("Push Notification",style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF7b4f44)
                  ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 5),
              child: LiteRollingSwitch(
                value: true,
                textOn: 'Yes',
                textOff: 'No',
                colorOn: Color(0xFF7b4f44),
                colorOff: Color(0xFFf8eee1),
                iconOn: Icons.check,
                iconOff: Icons.power_settings_new,
                animationDuration: Duration(milliseconds: 800),
                onChanged: (bool state) {
                  print('turned ${(state) ? 'yes' : 'no'}');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
