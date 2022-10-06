import 'package:dryflowershop/logut.dart';
import 'package:flutter/material.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/User Icon.svg",
            press: () => {
            Navigator.pushNamed(context, "myaccount")
            },
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/Bell.svg",
            press: () {
              Navigator.pushNamed(context, "notification");
            },
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/Settings.svg",
            press: () {
              Navigator.pushNamed(context, "settings");
            },
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/Question mark.svg",
            press: () {
              Navigator.pushNamed(context, "helpcentre");
            },
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/Log out.svg",
            press: () {
              Navigator.pushNamed(context, "logout");

            },
          ),
        ],
      ),
    );
  }
}
