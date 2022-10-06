import 'package:dryflowershop/about_us.dart';
import 'package:dryflowershop/addtocart.dart';
import 'package:dryflowershop/buy_now.dart';
import 'package:dryflowershop/cart.dart';
import 'package:dryflowershop/custom.dart';
import 'package:dryflowershop/dashboard.dart';
import 'package:dryflowershop/details.dart';
import 'package:dryflowershop/driedflower/driedflower_cat.dart';
import 'package:dryflowershop/driedflower/palm.dart';
import 'package:dryflowershop/help_centre.dart';
import 'package:dryflowershop/home.dart';
import 'package:dryflowershop/logut.dart';
import 'package:dryflowershop/my_account.dart';
import 'package:dryflowershop/notification.dart';
import 'package:dryflowershop/otp.dart';
import 'package:dryflowershop/payment.dart';
import 'package:dryflowershop/phone.dart';
import 'package:dryflowershop/privacy.dart';
import 'package:dryflowershop/profile.dart';
import 'package:dryflowershop/rate_us.dart';
import 'package:dryflowershop/settings.dart';
import 'package:dryflowershop/share.dart';
import 'package:dryflowershop/terms.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'phone',
      routes: {
        'phone': (context) => MyPhone(),
        'otp': (context) => MyOtp(),
        'dashboard': (context) => MyDashboard(),
        'aboutUs': (context) => AboutUsPage(),
        'share': (context) => SharePage(),
        'rateUs': (context) => RateUsPage(),
        'privacy': (context) => PrivacyPage(),
        'terms': (context) => TermsPage(),
        'profile': (context) => ProfilePage(),
        'cart': (context) => Cart(),
        'home': (context) => HomePage(),
        'myaccount': (context) => MyAccount(),
        'notification': (context) => NotificationPage(),
        'settings': (context) => SettingsPage(),
        'helpcentre': (context) => HelpCentre(),
        'logout': (context) => Logout(),
        'driedflowerCat': (context) => DriedFlowerCategory(),
        'palm': (context) => Palm(),
        'details': (context) => DetailsPage(),
        'buynow': (context) => BuyNow(),
        'payment': (context) => Payment(),
        'custom': (context) => Custom(
              title: 'Order Placed',
              description: 'You will be notified once the order is shipped',
            ),
        'addtocart': (context) => AddToCartSection(),
      }));
}
